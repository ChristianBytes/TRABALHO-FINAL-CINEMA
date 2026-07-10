-- ============================================================
-- 4_visao1.sql
-- View de consulta detalhada dos ingressos
-- ============================================================

DROP VIEW IF EXISTS vw_detalhes_ingressos;

CREATE VIEW vw_detalhes_ingressos AS
SELECT
    i.ticket,
    c.nome_cliente,
    f.nome AS filme,
    i.id_sessao,
    se.idioma,
    s.tipo,
    se.data_hora,
    s.id_sala,
    i.assento,
    i.preco,
    i.id_funcionario,
    i.data_compra
FROM INGRESSO AS i
JOIN CLIENTE AS c
    ON c.id_cliente = i.id_cliente
JOIN SESSAO AS se
    ON se.id_sessao = i.id_sessao
JOIN FILMES AS f
    ON f.id_filme = se.id_filme
JOIN SALA AS s
    ON s.id_sala = se.id_sala;

-- Teste da view
SELECT *
FROM vw_detalhes_ingressos
ORDER BY ticket;
