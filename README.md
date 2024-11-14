# Sistema de Gestão de Vendas de Automóveis

Este projeto visa criar um sistema de banco de dados para uma loja de **vendas de automóveis**, com o objetivo de armazenar e analisar informações sobre **vendas de veículos**, **clientes**, **estoque**, **vendedores**, **filiais** e **faturamento**. O banco de dados será utilizado para realizar **análises de desempenho de vendas**, **tendências de mercado**, **performance dos vendedores** e **impacto das vendas em diferentes regiões**.

---

## **Objetivos do Projeto**

O objetivo deste projeto é criar um banco de dados relacional que:
- Armazene dados sobre **clientes**, **vendedores**, **estoque de veículos**, **vendas**, e **faturamento**.
- Permita realizar **análises e consultas** como:
  - Vendas por filial
  - Vendas por vendedor
  - Vendas por cidade e estado
  - Análise de faturamento por filial
  - Relatórios financeiros

---

## **Estrutura do Banco de Dados**

### **Tabelas Principais**

O banco de dados é composto pelas seguintes tabelas principais:

1. **Filiais**: Contém informações sobre as lojas da rede de vendas de veículos.
2. **Vendedores**: Contém informações sobre os vendedores de cada filial.
3. **Clientes**: Armazena informações sobre os clientes que compraram veículos.
4. **Estoque**: Contém os veículos disponíveis para venda.
5. **Vendas**: Registra as transações de venda de veículos.
6. **Faturamento**: Armazena os dados financeiros das filiais.

### **Relacionamentos Entre as Tabelas**

- **Filiais x Vendedores**: Cada vendedor pertence a uma filial (chave estrangeira: `filial_id`).
- **Filiais x Estoque**: Cada veículo no estoque pertence a uma filial (chave estrangeira: `filial_id`).
- **Filiais x Vendas**: Cada venda é realizada em uma filial (chave estrangeira: `filial_id`).
- **Vendedores x Vendas**: Cada venda é realizada por um vendedor (chave estrangeira: `vendedor_id`).
- **Clientes x Vendas**: Cada venda está associada a um cliente (chave estrangeira: `cliente_id`).
- **Estoque x Vendas**: Cada venda é de um veículo do estoque (chave estrangeira: `estoque_id`).
- **Filiais x Faturamento**: Cada faturamento está associado a uma filial (chave estrangeira: `filial_id`).

---

## **Estrutura de Tabelas e Campos**

### **1. Filiais**

Armazena informações sobre as filiais da rede de vendas de veículos.

| Campo             | Tipo         | Descrição                              |
|-------------------|--------------|----------------------------------------|
| `id`              | `SERIAL`     | Identificador único da filial.         |
| `nome`            | `VARCHAR(100)`| Nome da filial (Matriz, Filial São Paulo, etc.). |
| `cidade`          | `VARCHAR(100)`| Cidade onde a filial está localizada. |
| `estado`          | `VARCHAR(2)`  | Estado (UF) onde a filial está localizada. |
| `codigo_filial`   | `CHAR(2)`     | Código único da filial (ex: '01' para Matriz). |

### **2. Vendedores**

Armazena informações sobre os vendedores.

| Campo             | Tipo         | Descrição                              |
|-------------------|--------------|----------------------------------------|
| `id`              | `SERIAL`     | Identificador único do vendedor.       |
| `nome`            | `VARCHAR(100)`| Nome completo do vendedor.            |
| `filial_id`       | `INT`        | Chave estrangeira para a filial.       |
| `email`           | `VARCHAR(150)`| E-mail do vendedor.                   |
| `telefone`        | `VARCHAR(20)` | Telefone de contato do vendedor.      |

### **3. Clientes**

Armazena informações sobre os clientes.

| Campo             | Tipo         | Descrição                              |
|-------------------|--------------|----------------------------------------|
| `id`              | `SERIAL`     | Identificador único do cliente.        |
| `nome`            | `VARCHAR(100)`| Nome completo do cliente.             |
| `cpf`             | `CHAR(11)`   | CPF do cliente (único).               |
| `email`           | `VARCHAR(150)`| E-mail do cliente.                    |
| `telefone`        | `VARCHAR(20)` | Telefone do cliente.                  |
| `endereco`        | `VARCHAR(255)`| Endereço do cliente.                  |
| `cidade`          | `VARCHAR(100)`| Cidade do cliente.                    |
| `estado`          | `VARCHAR(2)`  | Estado (UF) do cliente.               |

### **4. Estoque**

Armazena os veículos disponíveis para venda.

| Campo             | Tipo         | Descrição                              |
|-------------------|--------------|----------------------------------------|
| `id`              | `SERIAL`     | Identificador único do veículo.        |
| `modelo`          | `VARCHAR(100)`| Modelo do veículo.                    |
| `marca`           | `VARCHAR(50)` | Marca do veículo.                     |
| `ano`             | `INT`        | Ano de fabricação do veículo.         |
| `cor`             | `VARCHAR(50)` | Cor do veículo.                       |
| `preco`           | `DECIMAL(10,2)`| Preço do veículo.                     |
| `filial_id`       | `INT`        | Chave estrangeira para a filial.       |
| `codigo_estoque`  | `VARCHAR(50)` | Código único do veículo no estoque.   |

### **5. Vendas**

Armazena as transações de venda de veículos.

| Campo             | Tipo         | Descrição                              |
|-------------------|--------------|----------------------------------------|
| `id`              | `SERIAL`     | Identificador único da venda.          |
| `data`            | `DATE`       | Data da venda.                         |
| `valor`           | `DECIMAL(10, 2)`| Valor total da venda.                 |
| `filial_id`       | `INT`        | Chave estrangeira para a filial.       |
| `vendedor_id`     | `INT`        | Chave estrangeira para o vendedor.     |
| `estoque_id`      | `INT`        | Chave estrangeira para o veículo vendido. |
| `cliente_id`      | `INT`        | Chave estrangeira para o cliente.      |
| `estado_venda`    | `VARCHAR(2)` | Estado onde a venda foi realizada.    |
| `cidade_venda`    | `VARCHAR(100)`| Cidade onde a venda foi realizada.    |

### **6. Faturamento**

Armazena as informações financeiras de cada filial.

| Campo             | Tipo         | Descrição                              |
|-------------------|--------------|----------------------------------------|
| `id`              | `SERIAL`     | Identificador único do faturamento.    |
| `filial_id`       | `INT`        | Chave estrangeira para a filial.       |
| `data`            | `DATE`       | Data do faturamento.                  |
| `valor_total`     | `DECIMAL(10, 2)`| Valor total de vendas realizadas.    |
| `despesas`        | `DECIMAL(10, 2)`| Despesas da filial no período.       |
| `lucro_liquido`   | `DECIMAL(10, 2)`| Lucro líquido da filial no período.   |

---

## **Análises Possíveis**

Com este banco de dados, você pode realizar diversas análises, tais como:

- **Vendas por filial**: Analisar o desempenho de vendas de cada filial, tanto em volume quanto em valores.
- **Vendas por vendedor**: Identificar quais vendedores estão se destacando em termos de vendas.
- **Vendas por cidade e estado**: Analisar o impacto das vendas nas diferentes regiões.
- **Desempenho financeiro por filial**: Avaliar o faturamento de cada filial, considerando valores de vendas, despesas e lucros.
- **Vendas por modelo de veículo**: Analisar quais modelos de carros estão tendo maior demanda.

---

## **Como Rodar o Projeto**

1. **Banco de Dados**: O projeto foi desenvolvido para PostgreSQL, então você precisará instalar o PostgreSQL em sua máquina local ou utilizar um serviço de banco de dados online (como Heroku ou AWS RDS).
2. **Criar o Banco de Dados**: Após configurar o PostgreSQL, crie o banco de dados e execute os scripts SQL para criar as tabelas e as relações.
3. **Inserir Dados Fictícios**: Utilize os scripts de inserção de dados para adicionar informações fictícias às tabelas e começar a realizar suas análises.

---

## **Conclusão**

Este projeto tem como objetivo construir um banco de dados relacional para gestão e análise de vendas de automóveis. Com ele, será possível realizar análises detalhadas sobre o desempenho das filiais, vendedores, carros e clientes, além de acompanhar o faturamento e a saúde financeira da empresa.

---

