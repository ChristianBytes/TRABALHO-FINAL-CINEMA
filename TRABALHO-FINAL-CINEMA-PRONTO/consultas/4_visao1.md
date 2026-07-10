# `4_visao1.sql` — View de detalhes dos ingressos

## Nome da view

```text
vw_detalhes_ingressos
```

## Objetivo

A view reúne dados que estão distribuídos entre as tabelas:

- `ingresso`;
- `cliente`;
- `sessao`;
- `filmes`;
- `sala`.

## Colunas retornadas

| Coluna | Origem |
|---|---|
| `ticket` | `ingresso` |
| `nome_cliente` | `cliente` |
| `filme` | `filmes.nome` |
| `id_sessao` | `ingresso` |
| `idioma` | `sessao` |
| `tipo` | `sala` |
| `data_hora` | `sessao` |
| `id_sala` | `sala` |
| `assento` | `ingresso` |
| `preco` | `ingresso` |
| `id_funcionario` | `ingresso` |
| `data_compra` | `ingresso` |

## Consulta

```sql
SELECT *
FROM vw_detalhes_ingressos
ORDER BY ticket;
```

A utilização da view evita a repetição de todos os `JOIN` em consultas futuras.
