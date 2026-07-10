# `3_trigger.sql` — Triggers do banco

## `trg_verify_filme`

É executado antes da exclusão de um registro da tabela `filmes`.

O trigger conta quantas sessões futuras estão relacionadas ao filme. Quando existe pelo menos uma, a exclusão é cancelada com `SIGNAL SQLSTATE '45000'`.

> No dump recebido, o nome real desse trigger é `trg_verify_filme`. Ele exerce a função anteriormente descrita como `trg_exclui_filme`.

## `trg_verify_assento`

É executado antes da inserção de um registro na tabela `ingresso`.

O trigger verifica:

1. se o número do assento é maior que zero;
2. se o assento não ultrapassa a capacidade da sala;
3. se o assento ainda não está ocupado na mesma sessão.

Quando uma condição é inválida, a inserção é cancelada e uma mensagem é apresentada.

## Verificação

```sql
USE cinema_trabalhofinal;

SHOW TRIGGERS;

SHOW CREATE TRIGGER trg_verify_filme;
SHOW CREATE TRIGGER trg_verify_assento;
```
