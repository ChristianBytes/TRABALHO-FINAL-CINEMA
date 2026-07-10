# Sistema de Banco de Dados para Cinema

Projeto desenvolvido para a disciplina de Banco de Dados I.

O banco representa as principais operações de um cinema, incluindo clientes, funcionários, filmes, salas, sessões e ingressos. Também foram implementados dois triggers e uma view para consulta consolidada dos ingressos.

## Estrutura da entrega

A organização:

```text
Banco-de-Dados-I/
├── .gitignore
├── docker-compose.yml
├── GRUPO.md
├── README.md
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

## Função dos arquivos

### `inicializar/1_esquema.sql`

Responsável por:

- criar o banco de dados;
- selecionar o banco;
- criar as tabelas;
- definir as chaves primárias;
- definir as chaves estrangeiras;
- definir restrições e tipos de dados.

### `inicializar/1_esquema.md`

Documenta o esquema do banco, as tabelas e os relacionamentos.

### `scripts/2_popular.sql`

Contém os comandos `INSERT` usados para popular as tabelas.

### `scripts/3_trigger.sql`

Contém os dois triggers do projeto:

- `trg_verify_assento`;
- `trg_exclui_filme`.

### `scripts/3_trigger.md`

Explica o objetivo, o momento de execução e o funcionamento dos triggers.

### `consultas/4_visao1.sql`

Cria a view `vw_detalhes_ingressos`.

### `consultas/4_visao1.md`

Documenta a view, as tabelas utilizadas e o resultado da consulta.

## Configuração do Docker

O projeto utiliza MySQL em container Docker.

```text
Container: meubanco
Porta: 3306
Usuário: root
Senha acadêmica local: admin
```

A senha informada é apenas para o ambiente acadêmico local. Não reutilize essa senha em contas pessoais.

## Inicialização do container

Na pasta do projeto, execute:

```bash
docker compose up -d
```

Para conferir:

```bash
docker ps
```

## Executando o esquema

No PowerShell ou terminal aberto na pasta do repositório:

```bash
docker exec -i meubanco mysql -uroot -padmin < inicializar/1_esquema.sql
```

## Inserindo os dados

```bash
docker exec -i meubanco mysql -uroot -padmin NOME_DO_BANCO < scripts/2_popular.sql
```

Substitua `NOME_DO_BANCO` pelo nome real definido em `1_esquema.sql`.

## Criando os triggers

```bash
docker exec -i meubanco mysql -uroot -padmin NOME_DO_BANCO < scripts/3_trigger.sql
```

## Criando a view

```bash
docker exec -i meubanco mysql -uroot -padmin NOME_DO_BANCO < consultas/4_visao1.sql
```

## Testes

Entre no MySQL:

```bash
docker exec -it meubanco mysql -uroot -padmin
```

Depois execute:

```sql
SHOW DATABASES;
USE NOME_DO_BANCO;
SHOW TABLES;
SHOW TRIGGERS;
SHOW CREATE VIEW vw_detalhes_ingressos;

SELECT *
FROM vw_detalhes_ingressos
ORDER BY ticket;
```

## Atenção sobre a pasta `inicializar`

Os scripts colocados em `/docker-entrypoint-initdb.d` são executados automaticamente apenas quando o MySQL é inicializado com a pasta de dados vazia.

Se o container já possui dados, adicionar ou alterar `1_esquema.sql` não recria automaticamente o banco. Nesse caso, execute o arquivo manualmente com `docker exec -i`, conforme mostrado acima.

## Ordem de execução

1. `inicializar/1_esquema.sql`
2. `scripts/2_popular.sql`
3. `scripts/3_trigger.sql`
4. `consultas/4_visao1.sql`
