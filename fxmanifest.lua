fx_version 'cerulean'
game 'rdr3'

author 'Capivara_RP'
description 'Script para você interagir com pessoas e npc'
version '1.9.0.4'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

client_scripts {'client/kissme_client.lua',
    'config.lua'
}

server_scripts {
    'server/kissme_server.lua'
}

-- dependency 'vorp_menu' (usado somente com Vorp)
-- dependency 'rsg-core' -- habilite se usar RSG Core (opcional)

files {
    'images/carteira_npc.png',
    'images/relogio_npc.png'
}


-- Dependências por framework (descomente conforme necessário)

-- VORP Framework
-- dependency 'vorp_core'
-- dependency 'vorp_inventory'
-- dependency 'vorp_menu'

-- RSG Framework
-- dependency 'rsg-core'
-- dependency 'rsg-inventory'

-- OX Framework
-- dependency 'ox_core'
-- dependency 'ox_inventory'
-- dependency 'ox_lib'
