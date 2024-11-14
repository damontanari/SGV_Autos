
/* Tabela de Clientes */
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,                -- Identificador único do cliente
    nome VARCHAR(100) NOT NULL,           -- Nome do cliente
    cpf CHAR(11) UNIQUE NOT NULL,         -- CPF do cliente (único e obrigatório)
    email VARCHAR(150),                   -- E-mail do cliente
    telefone VARCHAR(20),                 -- Telefone do cliente
    endereco VARCHAR(255),                -- Endereço do cliente
    cidade VARCHAR(100),                  -- Cidade do cliente
    estado VARCHAR(2)                     -- Estado (UF) do cliente
);


/* Tabela de Vendas */
CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,                    		-- Identificador único da venda
    data DATE NOT NULL,                       		-- Data da venda
    valor DECIMAL(10, 2) NOT NULL,             		-- Valor da venda
    filial_id INT REFERENCES filiais(id),     		-- Chave estrangeira para a filial
    vendedor_id INT REFERENCES vendedores(id), 		-- Chave estrangeira para o vendedor
    estoque_id INT REFERENCES estoque(id),     		-- Chave estrangeira para o carro vendido
    cliente_id INT REFERENCES clientes(id),    		-- Chave estrangeira para o cliente
    estado_venda VARCHAR(2) NOT NULL,         		-- Estado onde a venda foi realizada
    cidade_venda VARCHAR(100) NOT NULL,       		-- Cidade onde a venda foi realizada
    CONSTRAINT fk_venda_estoque UNIQUE (estoque_id) -- Garantir que um carro só possa ser vendido uma vez
);


/* Tabela de Faturamento */
CREATE TABLE faturamento (
    id SERIAL PRIMARY KEY,                -- Identificador único para o registro
    filial_id INT REFERENCES filiais(id), -- Chave estrangeira que faz referência à filial
    data DATE NOT NULL,                   -- Data do faturamento
    valor_total DECIMAL(10, 2) NOT NULL,  -- Valor total de vendas realizadas na data
    despesas DECIMAL(10, 2),              -- Despesas da filial no período
    lucro_liquido DECIMAL(10, 2)          -- Lucro líquido da filial no período
);


/* Tabela de Estoque */
CREATE TABLE estoque (
    id SERIAL PRIMARY KEY,                	   -- Identificador único do carro (auto-incremento)
    modelo VARCHAR(100) NOT NULL,          	   -- Modelo do carro
    marca VARCHAR(50) NOT NULL,            	   -- Marca do carro
    ano INT,                                   -- Ano de fabricação
    cor VARCHAR(50),                           -- Cor do carro
    preco DECIMAL(10, 2) NOT NULL,             -- Preço do carro
    filial_id INT REFERENCES filiais(id),      -- Chave estrangeira que faz referência à filial
    codigo_estoque VARCHAR(50) UNIQUE NOT NULL -- Código único para o carro no estoque
);


/* Tabela de Vendedores */
CREATE TABLE vendedores (
    id SERIAL PRIMARY KEY,                -- Identificador único para o vendedor (auto-incremento)
    nome VARCHAR(100) NOT NULL,           -- Nome do vendedor
    filial_id INT REFERENCES filiais(id), -- Chave estrangeira que faz referência à filial do vendedor
    email VARCHAR(150),                   -- E-mail do vendedor
    telefone VARCHAR(20)                  -- Telefone do vendedor
);


/* Tabela de Filiais */
CREATE TABLE filiais (
    id SERIAL PRIMARY KEY,            	   -- Identificador único para a filial (auto-incremento)
    nome VARCHAR(100) NOT NULL,            -- Nome da filial
    cidade VARCHAR(100),                   -- Cidade da filial
    estado VARCHAR(2) NOT NULL,            -- Estado (UF) da filial
    codigo_filial CHAR(2) UNIQUE NOT NULL  -- Código único da filial (01 - Matriz, 02 - SP, etc)
);

