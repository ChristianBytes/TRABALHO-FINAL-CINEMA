# `3_trigger.sql` — Triggers do Banco de Dados do Cinema

## 1. Objetivo

O arquivo `3_trigger.sql` reúne as regras automáticas implementadas no banco de dados.

O projeto possui dois triggers:

- `trg_verify_assento`;
- `trg_exclui_filme`.

## 2. Trigger `trg_verify_assento`

### Finalidade

O trigger valida o assento informado durante a operação de cadastro ou compra de um ingresso.

Ele evita que um valor de assento inválido seja gravado na tabela `INGRESSO`.

### Funcionamento geral

Quando ocorre a operação definida no trigger, o banco analisa o valor de `NEW.assento`.

Caso o assento não atenda às regras estabelecidas, a operação é interrompida e uma mensagem de erro é apresentada.

### Benefícios

- impede registros inválidos;
- centraliza a regra no banco;
- protege os dados mesmo quando a inserção é feita por ferramentas diferentes;
- reduz inconsistências na tabela `INGRESSO`.

## 3. Trigger `trg_exclui_filme`

### Finalidade

O trigger impede a exclusão de um filme que ainda possui sessão futura cadastrada.

### Funcionamento geral

Antes da exclusão de um registro da tabela `FILMES`, o trigger verifica se existe alguma sessão associada ao filme cuja data e hora ainda não passaram.

Se existir uma sessão futura, a exclusão é bloqueada.

### Benefícios

- evita deixar sessões sem filme;
- preserva a integridade do planejamento do cinema;
- impede exclusões acidentais;
- aplica uma regra de negócio diretamente no banco.

## 4. Como obter o código real

Execute:

```sql
SHOW CREATE TRIGGER trg_verify_assento;
```

Depois:

```sql
SHOW CREATE TRIGGER trg_exclui_filme;
```

Copie os comandos `CREATE TRIGGER` retornados e coloque-os em `3_trigger.sql`.

## 5. Como conferir os triggers

```sql
SHOW TRIGGERS;
```

Para conferir individualmente:

```sql
SHOW CREATE TRIGGER trg_verify_assento;
SHOW CREATE TRIGGER trg_exclui_filme;
```

## 6. Observação

O código SQL real deve ser preservado exatamente como está funcionando no banco. Este documento descreve o comportamento informado para os triggers, mas não substitui o script SQL.
