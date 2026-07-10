# `4_visao1.sql` — View de Detalhes dos Ingressos

## 1. Objetivo

O arquivo `4_visao1.sql` cria a view:

```text
vw_detalhes_ingressos
```

Essa view reúne informações que estão distribuídas em várias tabelas do banco.

## 2. Tabelas utilizadas

A view utiliza:

- `INGRESSO`;
- `CLIENTE`;
- `SESSAO`;
- `FILMES`;
- `SALA`.

## 3. Relacionamentos utilizados

### Ingresso e cliente

```sql
JOIN CLIENTE AS c
    ON c.id_cliente = i.id_cliente
```

Esse relacionamento permite recuperar o nome do cliente relacionado ao ingresso.

### Ingresso e sessão

```sql
JOIN SESSAO AS se
    ON se.id_sessao = i.id_sessao
```

Esse relacionamento permite recuperar o idioma, a data e a hora da sessão.

### Sessão e filme

```sql
JOIN FILMES AS f
    ON f.id_filme = se.id_filme
```

Esse relacionamento permite recuperar o nome do filme exibido.

### Sessão e sala

```sql
JOIN SALA AS s
    ON s.id_sala = se.id_sala
```

Esse relacionamento permite recuperar a sala e o seu tipo.

## 4. Colunas retornadas

| Coluna | Origem | Descrição |
|---|---|---|
| `ticket` | `INGRESSO` | Identificador do ingresso. |
| `nome_cliente` | `CLIENTE` | Nome do cliente. |
| `filme` | `FILMES` | Nome do filme. |
| `id_sessao` | `INGRESSO` | Identificador da sessão. |
| `idioma` | `SESSAO` | Idioma da sessão. |
| `tipo` | `SALA` | Tipo da sala. |
| `data_hora` | `SESSAO` | Data e hora da sessão. |
| `id_sala` | `SALA` | Identificador da sala. |
| `assento` | `INGRESSO` | Assento do ingresso. |
| `preco` | `INGRESSO` | Preço pago. |
| `id_funcionario` | `INGRESSO` | Funcionário associado à venda. |
| `data_compra` | `INGRESSO` | Data da compra. |

## 5. Vantagens da view

A view simplifica as consultas, pois o usuário não precisa escrever novamente todos os `JOIN`.

Em vez de repetir a consulta completa, basta executar:

```sql
SELECT *
FROM vw_detalhes_ingressos
ORDER BY ticket;
```

## 6. Comando de criação

```sql
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
```

## 7. Teste

```sql
SELECT *
FROM vw_detalhes_ingressos
ORDER BY ticket;
```

O resultado deve apresentar os ingressos em ordem crescente de `ticket`.
