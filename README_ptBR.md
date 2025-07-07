
# KissMe - Capivara RP (v1.9.1.1)

Script social para RedM com suporte VORP e RSG, onde jogadores podem interagir com NPCs ou entre si pedindo beijos, criando cenas imersivas de RP.

---

## ✅ Recursos

- Pedido de beijo com tecla `END` ou comando `/kissme`
- NPCs: aceitam, rejeitam ou reagem agressivamente
- Players: podem aceitar, rejeitar ou dar tapa (automático se não responder)
- Cooldown por jogador (10s)
- Logs no Discord com nomes e resultado da tentativa
- Compatível com `vorp_inventory` (itens com imagem)
- Suporte multilíngue (langs.json)
- Export `KissMe(playerId)` para integração com outros scripts

---

## 🛠 Instalação

1. Coloque `capi_kissme` em `resources`
2. Adicione no `server.cfg`:
```
ensure capi_kissme
```
3. Configure no `config.lua`:
```lua
Config.Framework = "vorp" -- ou "rsg"
Config.Webhook = "URL_DO_SEU_WEBHOOK"
```

---

## 🧩 Banco de Dados

Execute o arquivo:
```
capi_kissme_items.sql
```

---

## 📦 Dependências

- VORP Core (ou RSG adaptado)
- vorp_menu

---

Feito com 💚 por Capivara_RP | v1.9


---

## 🔁 Compatibilidade com Frameworks

Este script é compatível com:
- ✅ VORP
- ✅ RSG Core
- ✅ OX Core

No `config.lua`, defina:
```lua
Config.Framework = "vorp" -- ou "rsg" ou "ox"
```

---

## 📦 Integração com Inventário

Compatível com:
- vorp_inventory
- rsg-inventory
- ox_inventory

Use o arquivo `capi_kissme_items.sql` como base para os itens. Adapte ao seu sistema se necessário.

---

## 🖥 Notificações

Sistema de notificações adaptável:
- VORP → `vorp:TipBottom`
- OX → `ox_lib:notify`
- RSG → `rsg:notify` (ou personalizada)

O script detecta automaticamente e usa a notificação correta.
