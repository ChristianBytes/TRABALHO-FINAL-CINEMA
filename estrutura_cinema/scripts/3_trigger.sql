-- ============================================================
-- 3_trigger.sql
-- Triggers do banco de dados do cinema
-- ============================================================
--
-- Este arquivo deve reunir os DOIS triggers, seguindo o mesmo
-- padrão usado no projeto Fazenda Inteligente.
--
-- Para obter o código real no MySQL, execute:
--
-- SHOW CREATE TRIGGER trg_verify_assento;
-- SHOW CREATE TRIGGER trg_exclui_filme;
--
-- Depois copie o CREATE TRIGGER completo para os locais indicados.
--
-- Não entregue este arquivo com os espaços abaixo sem preencher.

DROP TRIGGER IF EXISTS trg_verify_assento;
DROP TRIGGER IF EXISTS trg_exclui_filme;

DELIMITER $$

-- ============================================================
-- TRIGGER 1: trg_verify_assento
-- COLE AQUI O CREATE TRIGGER REAL
-- ============================================================
--
-- Exemplo apenas da posição:
--
-- CREATE TRIGGER trg_verify_assento
-- ...
-- BEGIN
--     ...
-- END$$


-- ============================================================
-- TRIGGER 2: trg_exclui_filme
-- COLE AQUI O CREATE TRIGGER REAL
-- ============================================================
--
-- Exemplo apenas da posição:
--
-- CREATE TRIGGER trg_exclui_filme
-- ...
-- BEGIN
--     ...
-- END$$

DELIMITER ;
