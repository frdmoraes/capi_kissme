-- CAPI KissMe - SQL Unificado para VORP, RSG e OX Inventory

-- =============================
-- 📦 ITENS PADRÃO DO SISTEMA
-- =============================

-- Esses itens são utilizados pelo script KissMe para recompensas e loot

-- ============================================
-- 🔸 VORP Inventory
-- Use esta estrutura se estiver usando VORP
-- ============================================
-- INSERT INTO items (name, label, limit, can_remove, type, image) VALUES
-- ('kiss_token', 'Beijo Simbólico', 10, 1, 'item', 'kiss_token.png'),
-- ('carteira_npc', 'Carteira Furtada', 5, 1, 'item', 'carteira_npc.png'),
-- ('relogio_npc', 'Relógio Furtado', 5, 1, 'item', 'relogio_npc.png');

-- ============================================
-- 🔸 OX Inventory
-- Use esta estrutura se estiver usando OX
-- ============================================
-- INSERT INTO items (name, label, weight) VALUES
-- ('kiss_token', 'Beijo Simbólico', 0),
-- ('carteira_npc', 'Carteira Furtada', 0.2),
-- ('relogio_npc', 'Relógio Furtado', 0.2);

-- ============================================
-- 🔸 RSG Inventory
-- Use esta estrutura se estiver usando RSG
-- ============================================
-- INSERT INTO items (name, label, weight) VALUES
-- ('kiss_token', 'Beijo Simbólico', 0),
-- ('carteira_npc', 'Carteira Furtada', 0.2),
-- ('relogio_npc', 'Relógio Furtado', 0.2);

-- ✅ Escolha o bloco correspondente ao seu inventário e execute apenas aquele.
-- ✏️ Adapte o nome da tabela se necessário (alguns inventários usam `items`, outros `inventory_items`).
-- 🖼️ Imagens correspondentes (carteira_npc.png e relogio_npc.png) estão incluídas no diretório /images.
