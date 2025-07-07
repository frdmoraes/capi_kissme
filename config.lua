-- Configuração geral do KissMe
Config = {}

-- Escolha o framework utilizado: "vorp", "rsg", ou "ox"
Config.Framework = "vorp"

-- Validação simples para evitar erros de digitação
local validFrameworks = { vorp = true, rsg = true, ox = true }
if not validFrameworks[Config.Framework] then
    print("[KissMe] Framework inválido em config.lua! Escolha entre: vorp, rsg ou ox.")
end

-- Chance de NPC aceitar o beijo (em %)
Config.NPCChanceAceitar = 85

-- Chance de player aceitar o beijo automaticamente (caso ele não responda) (em %)
Config.PlayerChanceAceitar = 60

-- Chance do player dar tapa automaticamente (caso rejeite sem resposta) (em %)
Config.PlayerChanceDarTapa = 20

-- Webhook para log (Discord)
Config.Webhook = "COLOQUE_AQUI_SEU_WEBHOOK"

-- Configuração de loot de NPCs ao serem beijados
-- Você pode adicionar mais itens, cada um com chance, e até quantidade (min e max)
Config.LootItems = {
    {name = "carteira_npc", label = "Carteira Furtada", chance = 50, min = 1, max = 1},
    {name = "relogio_npc", label = "Relógio Furtado", chance = 30, min = 1, max = 1}
}

-- Ícone usado no menu (caso utilize vorp_menu ou outro sistema com imagens)
Config.MenuIcon = "images/kiss_token.png"
