-- ============================================================
-- 3_trigger.sql
-- Triggers do banco de dados do cinema
-- ============================================================

USE `cinema_trabalhofinal`;

DROP TRIGGER IF EXISTS `trg_verify_filme`;
DROP TRIGGER IF EXISTS `trg_verify_assento`;

DELIMITER $$

-- Impede a exclusão de um filme que ainda possui sessão futura.
CREATE TRIGGER `trg_verify_filme`
BEFORE DELETE ON `filmes`
FOR EACH ROW
BEGIN
    DECLARE v_sessoes_futuras INT DEFAULT 0;

    SELECT COUNT(*)
      INTO v_sessoes_futuras
      FROM `sessao`
     WHERE `id_filme` = OLD.`id_filme`
       AND `data_hora` > NOW();

    IF v_sessoes_futuras > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'Não foi possível excluir o filme, pois ele possui sessões futuras.';
    END IF;
END$$


-- Valida a capacidade e a disponibilidade do assento.
CREATE TRIGGER `trg_verify_assento`
BEFORE INSERT ON `ingresso`
FOR EACH ROW
BEGIN
    DECLARE v_capacidade INT;
    DECLARE v_assento_ocupado INT DEFAULT 0;

    SELECT s.`qnt_assentos`
      INTO v_capacidade
      FROM `sessao` AS se
      JOIN `sala` AS s
        ON s.`id_sala` = se.`id_sala`
     WHERE se.`id_sessao` = NEW.`id_sessao`;

    IF NEW.`assento` <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'Assento inválido: o número deve ser maior que zero.';
    END IF;

    IF NEW.`assento` > v_capacidade THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'Assento inválido: o número excede a capacidade da sala.';
    END IF;

    SELECT COUNT(*)
      INTO v_assento_ocupado
      FROM `ingresso`
     WHERE `id_sessao` = NEW.`id_sessao`
       AND `assento` = NEW.`assento`;

    IF v_assento_ocupado > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'Assento inválido: o assento selecionado já está ocupado.';
    END IF;
END$$

DELIMITER ;
