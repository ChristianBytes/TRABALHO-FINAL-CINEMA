# `1_esquema.sql` — Criação do Banco de Dados do Cinema

## 1. Objetivo

O arquivo `1_esquema.sql` é responsável pela criação da estrutura principal do banco de dados do cinema.

Ele deve conter:

- criação do banco;
- seleção do banco com `USE`;
- criação das tabelas;
- definição das chaves primárias;
- definição das chaves estrangeiras;
- restrições de integridade;
- tipos de dados dos campos.

## 2. Tabelas do projeto

O banco possui seis tabelas principais:

1. `CLIENTE`
2. `FUNCIONARIO`
3. `FILMES`
4. `SALA`
5. `SESSAO`
6. `INGRESSO`

Os nomes foram mantidos em letras maiúsculas para evitar inconsistências em ambientes que diferenciam maiúsculas de minúsculas.

## 3. Tabela `CLIENTE`

Armazena os dados das pessoas que compram ingressos.

Campos confirmados no projeto:

| Campo | Papel |
|---|---|
| `id_cliente` | Identificador do cliente e chave primária. |
| `nome_cliente` | Nome do cliente. |

Os demais campos devem ser documentados exatamente como aparecem no `CREATE TABLE CLIENTE`.

## 4. Tabela `FUNCIONARIO`

Armazena os dados dos funcionários que trabalham no cinema e podem participar da venda de ingressos.

Campo confirmado:

| Campo | Papel |
|---|---|
| `id_funcionario` | Identificador do funcionário e chave primária. |

Os demais campos devem ser conferidos no script real.

## 5. Tabela `FILMES`

Armazena os filmes disponíveis no cinema.

Campos confirmados:

| Campo | Papel |
|---|---|
| `id_filme` | Identificador do filme e chave primária. |
| `nome` | Nome ou título do filme. |

## 6. Tabela `SALA`

Armazena as salas utilizadas para exibição.

Campos confirmados:

| Campo | Papel |
|---|---|
| `id_sala` | Identificador da sala e chave primária. |
| `tipo` | Tipo ou categoria da sala. |

## 7. Tabela `SESSAO`

Armazena as sessões de exibição.

Campos confirmados:

| Campo | Papel |
|---|---|
| `id_sessao` | Identificador da sessão e chave primária. |
| `id_filme` | Chave estrangeira para `FILMES`. |
| `id_sala` | Chave estrangeira para `SALA`. |
| `idioma` | Idioma da sessão. |
| `data_hora` | Data e hora da sessão. |

## 8. Tabela `INGRESSO`

Armazena os ingressos vendidos ou cadastrados.

Campos confirmados:

| Campo | Papel |
|---|---|
| `ticket` | Identificador do ingresso e chave primária. |
| `id_cliente` | Chave estrangeira para `CLIENTE`. |
| `id_sessao` | Chave estrangeira para `SESSAO`. |
| `assento` | Número ou identificação do assento. |
| `preco` | Preço do ingresso. |
| `id_funcionario` | Funcionário associado à venda. |
| `data_compra` | Data em que a compra foi registrada. |

## 9. Relacionamentos

Os relacionamentos principais são:

```text
CLIENTE     1 ---- N INGRESSO
FUNCIONARIO 1 ---- N INGRESSO
FILMES      1 ---- N SESSAO
SALA        1 ---- N SESSAO
SESSAO      1 ---- N INGRESSO
```

Isso significa:

- um cliente pode possuir vários ingressos;
- um funcionário pode estar relacionado a vários ingressos;
- um filme pode possuir várias sessões;
- uma sala pode receber várias sessões em horários diferentes;
- uma sessão pode possuir vários ingressos.

## 10. Ordem de criação

Uma ordem segura de criação é:

1. `CLIENTE`
2. `FUNCIONARIO`
3. `FILMES`
4. `SALA`
5. `SESSAO`
6. `INGRESSO`

`SESSAO` deve ser criada depois de `FILMES` e `SALA`.

`INGRESSO` deve ser criada depois de `CLIENTE`, `FUNCIONARIO` e `SESSAO`.

## 11. Integridade referencial

As chaves estrangeiras impedem que registros relacionados apontem para identificadores inexistentes.

Por exemplo:

- não deve existir uma sessão com um filme inexistente;
- não deve existir uma sessão com uma sala inexistente;
- não deve existir um ingresso com cliente inexistente;
- não deve existir um ingresso com sessão inexistente.

## 12. Observação para a entrega

Este Markdown documenta apenas os campos confirmados pelo projeto e pela consulta da view.

Antes da entrega, compare este arquivo com o código real de `1_esquema.sql` e acrescente os demais atributos de cada tabela.
