
# 💋 capi_kissme v1.9.1.1

Script para RedM com VORP ou RSG que permite interações sociais entre jogadores e NPCs, com foco em roleplay imersivo e divertido.

---

## ✅ Funcionalidades

- Envie pedido de beijo com a tecla `END`;
- Jogadores recebem um menu interativo com `vorp_menu` para responder ou, caso não respondam, entra lógica automática:
  - 💋 Aceitar Beijo
  - 🛑 Recusar Beijo
  - 🔪 Dar tapa
- NPCs:
  - Podem aceitar, dar tapa ou reagir agressivamente (dependendo da configuração);
- Cooldown de 10 segundos por player;
- Multilíngue via `langs.json` (pt_br, pt_pt, en, fr);
- Logs detalhados via Webhook (nome de quem beijou, alvo e resultado);
- Integração com outros scripts via export `exports("KissMe", function(playerId) ... end)`

---

## 🛠️ Instalação

1. Copie a pasta `capi_kissme` para `resources` do seu servidor RedM;
2. No `server.cfg`, adicione:
```
ensure capi_kissme
```
3. Edite o `config.lua`:
```lua
Config.Framework = "vorp" -- ou "rsg"
Config.Webhook = "URL_DO_SEU_WEBHOOK"
```
4. Adicione permissões no `server.cfg`:
```
add_ace group.admin capi_kissme.admin allow
add_principal identifier.steam:SEU_HEX group.admin
```

---

## 📁 SQL (usar o arquivo capi_kissme_items.sql)

```sql
-- Execute no banco de dados:
-- capi_kissme_items.sql
```

---

## 📋 Dependências

- `vorp_core`
- `vorp_menu`

---

## 📦 Exportação

Outros scripts podem acionar:
```lua
exports("KissMe", function(playerId)
    -- dispara interação KissMe com o player
end)
```


---

## 🔁 Framework Compatibility

This script is compatible with:
- ✅ VORP
- ✅ RSG Core
- ✅ OX Core

Use `Config.Framework = "vorp"`, `"rsg"` or `"ox"` to switch.

Notifies and loot systems adapt automatically based on framework.

---

## 🔧 Inventory Integration

The loot system supports:
- vorp_inventory
- rsg-inventory
- ox_inventory

Make sure to configure your inventory appropriately and add the items listed in `capi_kissme_items.sql`.

---

## 🖥 Notifications

The script uses a dynamic notification system:
- VORP → `vorp:TipBottom`
- OX → `ox_lib:notify`
- RSG → `rsg:notify` (or custom)

No need to modify the code; it adapts based on your framework.

---

## Instalação

1. Extraia o conteúdo do `.zip` para sua pasta `resources/`.
2. Renomeie para `capi_kissme` (caso deseje manter o padrão).
3. Adicione ao seu `server.cfg`:
   ```
   ensure capi_kissme
   ```

4. Importe o SQL correspondente:
   - `capi_kissme_items.sql` para VORP, RSG ou OX (itens compatíveis)
   - Adapte conforme necessário ao seu banco de dados

## Compatibilidade

Compatível com:

- VORP Core
- RSG Core
- OX Core (parcial, via ox_inventory e ox_core)

## Comandos

- `/kissdance`: Inicia uma dança sincronizada com um player próximo (até 2.0m)

- `/kissme` ou tecla `END`: solicita beijo ao player próximo ou NPC
- NPC pode aceitar ou recusar com tapa
- Pode haver loot (carteira, relógio, etc.) ao beijar NPCs

## Créditos

Desenvolvido por Capivara RP
