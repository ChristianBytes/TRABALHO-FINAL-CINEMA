# Trabalho Final — Banco de Dados de Cinema

Projeto desenvolvido para a disciplina de Banco de Dados I.

## Estrutura

```text
TRABALHO-FINAL-CINEMA/
├── README.md
├── GRUPO.md
├── inicializar/
│   ├── 1_esquema.sql
│   └── 1_esquema.md
├── scripts/
│   ├── 2_popular.sql
│   ├── 3_trigger.sql
│   └── 3_trigger.md
└── consultas/
    ├── 4_visao1.sql
    └── 4_visao1.md
```

## Banco de dados

```text
cinema_trabalhofinal
```

## Tabelas

- `cliente`
- `filmes`
- `funcionario`
- `sala`
- `sessao`
- `ingresso`

Os nomes foram padronizados em letras minúsculas para evitar erros de diferenciação entre maiúsculas e minúsculas em MySQL executado no Linux/Docker.

## Quantidade de registros

| Tabela | Registros |
|---|---:|
| `cliente` | 100 |
| `filmes` | 100 |
| `funcionario` | 100 |
| `sala` | 100 |
| `sessao` | 100 |
| `ingresso` | 102 |
| **Total** | **602** |

## Triggers

- `trg_verify_filme`: impede a exclusão de filmes com sessões futuras;
- `trg_verify_assento`: valida capacidade e disponibilidade do assento.

## View

- `vw_detalhes_ingressos`: apresenta dados completos dos ingressos.

## Ordem de execução

1. `inicializar/1_esquema.sql`
2. `scripts/2_popular.sql`
3. `scripts/3_trigger.sql`
4. `consultas/4_visao1.sql`

## Execução no MySQL Workbench

Abra e execute os arquivos na ordem indicada. Cada script seleciona automaticamente o banco `cinema_trabalhofinal`.

## Verificação

```sql
USE cinema_trabalhofinal;

SHOW TABLES;
SHOW TRIGGERS;
SHOW CREATE VIEW vw_detalhes_ingressos;

SELECT COUNT(*) FROM cliente;
SELECT COUNT(*) FROM filmes;
SELECT COUNT(*) FROM funcionario;
SELECT COUNT(*) FROM sala;
SELECT COUNT(*) FROM sessao;
SELECT COUNT(*) FROM ingresso;

SELECT *
FROM vw_detalhes_ingressos
ORDER BY ticket;
```


