# Atividade 08 – Cafeteria BomGosto


## 📋 Descrição da Atividade

Este projeto corresponde à **Lista de Tarefas 8** do curso de Desenvolvimento Full Stack Jr. (+praTi & Codifica), e foi desenvolvido utilizando comandos **SQL** para modelagem, construção e consulta de banco de dados.

A atividade propõe a criação de um banco de dados para a cafeteria fictícia **BomGosto**, que deseja controlar suas vendas de café por meio de comandas. Cada comanda registra:

- Código único
- Data
- Número da mesa
- Nome do cliente

Os itens da comanda relacionam os cafés vendidos, com base no cardápio. Cada item possui:

- Código do produto (cardápio)
- Quantidade vendida

---

## 🧱 Estrutura do Banco de Dados

O banco é composto por três tabelas:

- `Comanda`: informações da venda
- `Cardapio`: produtos disponíveis
- `Item_Comanda`: relação entre comandas e produtos

---

## 📁 Organização dos Arquivos

- `00_estrutura_e_dados.sql` → Criação das tabelas e inserção de dados
- `exercicio01.sql` → Listagem do cardápio ordenada por nome
- `exercicio02.sql` → Comandas com itens detalhados e preço total
- `exercicio03.sql` → Comandas com valor total
- `exercicio04.sql` → Comandas com mais de um tipo de café
- `exercicio05.sql` → Faturamento total por data
- `bomgosto.sql` → Script completo com estrutura, dados e consultas

---

## 🚀 Como executar

1. Importar o arquivo `bomgosto.sql` no pgAdmin ou outro gerenciador PostgreSQL
2. Executar os arquivos `exercicio01.sql` a `exercicio05.sql` para visualizar os resultados individualmente

---
