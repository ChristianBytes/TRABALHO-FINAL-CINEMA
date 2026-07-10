# `1_esquema.sql` — Esquema do banco de dados

## Objetivo

O script cria o banco `cinema_trabalhofinal` e suas seis tabelas.

## Tabela `cliente`

| Campo | Tipo | Restrições |
|---|---|---|
| `id_cliente` | `INT` | Chave primária e `AUTO_INCREMENT` |
| `cpf` | `INT` | Obrigatório e único |
| `sexo_cliente` | `ENUM('M','F')` | Opcional |
| `nasc_cliente` | `DATE` | Obrigatório |
| `email_cliente` | `VARCHAR(70)` | Obrigatório e único |
| `nome_cliente` | `VARCHAR(70)` | Obrigatório |

## Tabela `filmes`

| Campo | Tipo | Restrições |
|---|---|---|
| `id_filme` | `INT` | Chave primária e `AUTO_INCREMENT` |
| `nome` | `VARCHAR(70)` | Obrigatório |
| `diretor` | `VARCHAR(50)` | Obrigatório |
| `lancamento` | `DATE` | Obrigatório |
| `genero` | `VARCHAR(30)` | Obrigatório |

## Tabela `funcionario`

| Campo | Tipo | Restrições |
|---|---|---|
| `id_funcionario` | `INT` | Chave primária e `AUTO_INCREMENT` |
| `nome` | `VARCHAR(70)` | Obrigatório |
| `nascimento` | `DATE` | Obrigatório |
| `email` | `VARCHAR(70)` | Obrigatório e único |
| `sexo` | `ENUM('M','F')` | Opcional |

## Tabela `sala`

| Campo | Tipo | Restrições |
|---|---|---|
| `id_sala` | `INT` | Chave primária e `AUTO_INCREMENT` |
| `qnt_assentos` | `INT` | Obrigatório |
| `tipo` | `VARCHAR(30)` | Obrigatório |

## Tabela `sessao`

| Campo | Tipo | Restrições |
|---|---|---|
| `id_sessao` | `INT` | Chave primária e `AUTO_INCREMENT` |
| `id_sala` | `INT` | Chave estrangeira para `sala` |
| `id_filme` | `INT` | Chave estrangeira para `filmes` |
| `idioma` | `VARCHAR(30)` | Obrigatório |
| `data_hora` | `DATETIME` | Obrigatório |

As chaves estrangeiras usam `ON DELETE RESTRICT` e `ON UPDATE CASCADE`.

## Tabela `ingresso`

| Campo | Tipo | Restrições |
|---|---|---|
| `ticket` | `INT` | Chave primária e `AUTO_INCREMENT` |
| `id_cliente` | `INT` | Chave estrangeira para `cliente` |
| `id_funcionario` | `INT` | Chave estrangeira para `funcionario` |
| `id_sessao` | `INT` | Chave estrangeira para `sessao` |
| `preco` | `DECIMAL(5,2)` | Obrigatório |
| `assento` | `INT` | Obrigatório |
| `data_compra` | `DATETIME` | Obrigatório |

As chaves estrangeiras usam `ON DELETE RESTRICT` e `ON UPDATE CASCADE`.

## Relacionamentos

```text
cliente     1 ───── N ingresso
funcionario 1 ───── N ingresso
filmes      1 ───── N sessao
sala        1 ───── N sessao
sessao      1 ───── N ingresso
```

## Ordem de criação

1. `cliente`
2. `filmes`
3. `funcionario`
4. `sala`
5. `sessao`
6. `ingresso`

Essa ordem garante que as tabelas referenciadas sejam criadas antes das tabelas que possuem chaves estrangeiras.
