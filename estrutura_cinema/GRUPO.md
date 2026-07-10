# Grupo — Sistema de Banco de Dados para Cinema

## Disciplina

Banco de Dados I

## Tema

Sistema de gerenciamento de cinema.

## Integrantes

- Gustavo Prado de Paula
- Christian Bites
- [Adicionar outro integrante, caso exista]

## Descrição do problema

Um cinema precisa manter organizadas as informações de clientes, funcionários, filmes, salas, sessões e ingressos.

O banco de dados permite:

- cadastrar clientes e funcionários;
- armazenar os filmes disponíveis;
- registrar salas e seus tipos;
- cadastrar sessões relacionadas a filmes e salas;
- registrar a venda de ingressos;
- associar cada ingresso ao cliente e à sessão;
- identificar o funcionário responsável;
- validar os assentos;
- impedir a exclusão indevida de filmes com sessões futuras;
- consultar informações completas dos ingressos por meio de uma view.

## Tabelas principais

- `CLIENTE`
- `FUNCIONARIO`
- `FILMES`
- `SALA`
- `SESSAO`
- `INGRESSO`

## Triggers

### `trg_verify_assento`

Valida o assento informado no processo de cadastro ou venda do ingresso.

### `trg_exclui_filme`

Impede a exclusão de um filme quando existe uma sessão futura associada a ele.

## View

### `vw_detalhes_ingressos`

Reúne dados do ingresso, cliente, filme, sessão e sala em uma única consulta.
