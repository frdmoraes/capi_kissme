# 📜 CHANGELOG – capi_kissme


## v1.9.0.4 (4 de Julho de 2025)

### ⚙️ Loot configurável
- Configuração `Config.LootItems` adicionada no `config.lua`
- Permite ajustar itens, nomes e chance de drop via tabela

### 🧙 Animação de coleta
- Player agora faz animação ao pegar item de NPC

### 📤 Webhook de loot
- Loot obtido de NPC também é registrado no Discord (via `sendWebhookLog`)

---
# 📜 CHANGELOG – capi_kissme


## v1.9.0.3 (4 de Julho de 2025)

### 🎁 Sistema de Loot
- NPCs agora podem dropar itens como `carteira_npc` ou `relogio_npc` ao serem beijados
- Chance configurada diretamente na lógica (padrão: 50% carteira, 30% relógio)

### 🧩 Suporte Inventários
- Compatibilidade com `rsg-inventory` adicionada (detecção via `Config.Framework`)

---
# 📜 CHANGELOG – capi_kissme


## v1.9.0.2 (4 de Julho de 2025)

### 🔗 Integrações
- Webhook agora usa nome completo do personagem via `vorp_character`
  - Exemplo: "John Marston tentou beijar Arthur Morgan"
- `exports["vorp_core"]:getUser(source)` aplicado com fallback para GetPlayerName


---
# 📜 CHANGELOG – capi_kissme


## v1.9.0.1 (4 de Julho de 2025)

### ➕ Adições
- Dependência opcional adicionada: `rsg-core`
- Preparação para integração futura com `vorp_character` e inventários alternativos
- Inclusos ícones adicionais para itens furtados (64x64): `carteira_npc.png`, `relogio_npc.png`, e prontos para outras resoluções


---
# 📜 CHANGELOG – capi_kissme


## v1.9.0 (4 de Julho de 2025)

### ✅ Compatibilidade
- Suporte completo para VORP e RSG (configurável via config.lua)

### ✨ Melhorias
- Novo webhook com nomes dos jogadores e resultado da tentativa
- Chance de tapa ou recusa entre jogadores (não apenas NPCs)
- Export `KissMe(playerId)` disponível para uso em outros scripts

### ⚙️ Configurações novas
- `Config.Framework`: escolha entre `"vorp"` ou `"rsg"`
- `Config.PlayerChanceAceitar`, `Config.PlayerChanceDarTapa`: para lógica de resposta do player

---
# 📜 CHANGELOG – capi_kissme

Histórico de versões e melhorias do script de interações sociais KissMe.

---

## v1.8.1 (2 de Julho de 2025)

### ✅ Correções
- Corrigido erro de sintaxe no `kissme_server.lua` (vários `end` duplicados)
- Verificação completa de estrutura de funções e blocos finalizados

### ✨ Melhorias
- Comentários explicativos adicionados em:
  - `kissme_server.lua`: cada função explicada
  - `kissme_client.lua`: eventos, funções, interações e menus
  - `config.lua`: identificado como reservado para configurações futuras
- Novo SQL unificado `capi_kissme_items.sql` com:
  - `kiss_token`
  - `carteira_npc`
  - `relogio_npc`
  - Campos completos para uso no `vorp_inventory`, com imagens

### 📚 Documentação
- `README.md` atualizado com instruções de instalação, uso e dependências
- Adição de ícones no inventário (carteira_npc.png, relogio_npc.png)
- Tabela de interações com NPCs e players
- Manual do jogador detalhado (`MANUAL_JOGADOR.txt`)
- Suporte multilíngue (`langs.json` com pt_br e en)

---

## v1.8 (Original)

- Criação do sistema KissMe
- Interações com players:
  - Pedido de beijo com confirmação
- Interações com NPCs:
  - Beijo com chance de tapa
  - Dança, ataque, roubo de carteira e relógio
- Sistema de webhook para log de interações
- Menu com `vorp_menu`


### v1.9.1.2 - 2025-07-05
- Compatibilidade garantida com VORP, RSG e OX
- Instruções claras adicionadas ao README_ptBR.md
- Comentários explicativos no fxmanifest.lua
- SQL unificado atualizado (capi_kissme_items.sql)
- Preparado para instalação em múltiplos inventários
