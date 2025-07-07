-- Função auxiliar de notificação compatível com múltiplos frameworks
local function showNotification(message, duration)
    if Config.Framework == "vorp" then
        TriggerEvent("vorp:TipBottom", message, duration)
    elseif Config.Framework == "ox" then
        exports.ox_lib:notify({title = "KissMe", description = message, duration = duration})
    elseif Config.Framework == "rsg" then
        TriggerEvent("rsg:notify", message, duration)
    else
        TriggerEvent("chatMessage", "SYSTEM", {255, 255, 255}, message)
    end
end

RegisterNetEvent("kissme:showNotification")
AddEventHandler("kissme:showNotification", function(message, duration)
    showNotification(message, duration)
end)


-- Carrega idioma com fallback seguro
local function loadLang()
    local raw = LoadResourceFile(GetCurrentResourceName(), "config/langs.json")
    if not raw then
        print("[KissMe] Erro ao carregar config/langs.json")
        return { en = { error = "Language not found" } }
    end
    local data = json.decode(raw)
    local locale = GetConvar("locale", "en")
    return data[locale] or data["en"]
end

local Lang = loadLang()
local Config = Config or {}

RegisterCommand('kissme', function()
    TriggerEvent('kissme:tryKiss')
end)
RegisterKeyMapping('kissme', 'Pedir beijo (KissMe)', 'keyboard', 'END')

function GetClosestEntity()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    for _, playerId in ipairs(GetActivePlayers()) do
        local targetPed = GetPlayerPed(playerId)
        if targetPed ~= playerPed and #(coords - GetEntityCoords(targetPed)) < 2.0 then
            return 'player', GetPlayerServerId(playerId)
        end
    end
    local peds = GetGamePool('CPed')
    for _, ped in ipairs(peds) do
        if not IsPedAPlayer(ped) and #(coords - GetEntityCoords(ped)) < 2.0 then
            if IsPedHuman(ped) and not IsPedInAnyVehicle(ped, false) then
                return 'npc', ped
            end
        end
    end
    return nil, nil
end

RegisterNetEvent('kissme:tryKiss')
AddEventHandler('kissme:tryKiss', function()
    if not Config or not Config.NPCChanceAceitar then return end
    local tipo, alvo = GetClosestEntity()
    if tipo == 'player' then
        TriggerServerEvent('kissme:tryKiss')
    elseif tipo == 'npc' then
        local chance = math.random(1, 100)
        if chance <= Config.NPCChanceAceitar then
            StartKissAnim(PlayerPedId(), alvo)
        else
            StartSlapAnim(PlayerPedId(), alvo)
        end
    else
        TriggerEvent('vorp:TipBottom', "Ninguém por perto...", 4000)
    end
end)

function StartKissAnim(sourcePed, targetPed)
    TaskStartScenarioInPlace(sourcePed, "WORLD_HUMAN_LEAN_IN_KISS", 0, true)
    TaskStartScenarioInPlace(targetPed, "WORLD_HUMAN_LEAN_IN_KISS", 0, true)
end

function StartSlapAnim(sourcePed, targetPed)
    ClearPedTasksImmediately(sourcePed)
    TaskTurnPedToFaceEntity(sourcePed, targetPed, 1000)
    Wait(500)
    TaskPlayAnim(sourcePed, "melee@unarmed@streamed_variations", "plyr_takedown_rear_lefthook", 8.0, -8, -1, 0, 0, false, false, false)
end

RegisterNetEvent('kissme:startKiss')
AddEventHandler('kissme:startKiss', function(targetId)
    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))
    StartKissAnim(PlayerPedId(), targetPed)
end)

RegisterNetEvent('kissme:slapPlayer')
AddEventHandler('kissme:slapPlayer', function(agressorId)
    local agressorPed = GetPlayerPed(GetPlayerFromServerId(agressorId))
    StartSlapAnim(PlayerPedId(), agressorPed)
end)

RegisterNetEvent("kissme:notifyLoot")
AddEventHandler("kissme:notifyLoot", function(label)
    ClearPedTasksImmediately(PlayerPedId())
    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_PICKUP", 0, true)
    Wait(1500)
    ClearPedTasks(PlayerPedId())
    showNotification("Você encontrou: " .. label, 4000)
end)



RegisterCommand("kissdance", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    for _, playerId in ipairs(GetActivePlayers()) do
        local targetPed = GetPlayerPed(playerId)
        if targetPed ~= playerPed and #(coords - GetEntityCoords(targetPed)) < 2.0 then
            TriggerServerEvent("kissme:startDance", GetPlayerServerId(playerId))
            break
        end
    end
end)

RegisterNetEvent("kissme:syncDance")
AddEventHandler("kissme:syncDance", function()
    local ped = PlayerPedId()
    RequestAnimDict("mech_dance@male_dance@idle_a")
    while not HasAnimDictLoaded("mech_dance@male_dance@idle_a") do Wait(10) end
    TaskPlayAnim(ped, "mech_dance@male_dance@idle_a", "idle_a", 1.0, -1.0, -1, 1, 0, false, false, false)
end)
