-- Exemplo de vendas em 2022, associando com os clientes
INSERT INTO vendas (data, valor, filial_id, vendedor_id, estoque_id, cliente_id, estado_venda, cidade_venda) 
VALUES 
('2022-01-15', 55000.00, 1, 1, (SELECT id FROM estoque WHERE codigo_estoque = 'EST001'), 1, 'SP', 'São Paulo'),  -- Ana Souza
('2022-02-05', 85000.00, 3, 3, (SELECT id FROM estoque WHERE codigo_estoque = 'EST014'), 2, 'RJ', 'Rio de Janeiro'),  -- Carlos Oliveira
('2022-03-10', 48000.00, 5, 5, (SELECT id FROM estoque WHERE codigo_estoque = 'EST023'), 3, 'MG', 'Belo Horizonte'),  -- Fernanda Silva
('2022-05-15', 45000.00, 4, 4, (SELECT id FROM estoque WHERE codigo_estoque = 'EST016'), 4, 'PR', 'Curitiba'),  -- João Pereira
('2022-06-25', 52000.00, 5, 5, (SELECT id FROM estoque WHERE codigo_estoque = 'EST024'), 5, 'MG', 'Belo Horizonte');  -- Ricardo Lima



-- Exemplo de vendas em 2023, associando com os clientes
INSERT INTO vendas (data, valor, filial_id, vendedor_id, estoque_id, cliente_id, estado_venda, cidade_venda) 
VALUES 
('2023-01-10', 50000.00, 3, 3, (SELECT id FROM estoque WHERE codigo_estoque = 'EST011'), 6, 'RJ', 'Rio de Janeiro'),  -- Juliana Costa
('2023-02-10', 53000.00, 2, 6, (SELECT id FROM estoque WHERE codigo_estoque = 'EST007'), 7, 'SP', 'São Paulo'),  -- Patricia Almeida
('2023-03-15', 50000.00, 4, 5, (SELECT id FROM estoque WHERE codigo_estoque = 'EST041'), 8, 'PR', 'Curitiba'),  -- Eduardo Santos
('2023-04-05', 53000.00, 1, 2, (SELECT id FROM estoque WHERE codigo_estoque = 'EST043'), 9, 'SP', 'São Paulo'),  -- Roberta Lima
('2023-06-25', 52000.00, 5, 6, (SELECT id FROM estoque WHERE codigo_estoque = 'EST023'), 10, 'MG', 'Belo Horizonte');  -- Marcelo Ferreira



-- Exemplo de vendas em 2024, associando com os clientes
INSERT INTO vendas (data, valor, filial_id, vendedor_id, estoque_id, cliente_id, estado_venda, cidade_venda) 
VALUES 
('2024-01-15', 55000.00, 2, 2, (SELECT id FROM estoque WHERE codigo_estoque = 'EST006'), 11, 'SP', 'São Paulo'),  -- Gustavo Martins
('2024-02-10', 53000.00, 3, 4, (SELECT id FROM estoque WHERE codigo_estoque = 'EST030'), 12, 'RJ', 'Rio de Janeiro'),  -- Luciana Ferreira
('2024-03-10', 54000.00, 5, 6, (SELECT id FROM estoque WHERE codigo_estoque = 'EST035'), 13, 'MG', 'Belo Horizonte'),  -- Julio César
('2024-04-15', 50000.00, 1, 2, (SELECT id FROM estoque WHERE codigo_estoque = 'EST010'), 14, 'PR', 'Curitiba'),  -- Camila Nunes
('2024-05-05', 48000.00, 4, 5, (SELECT id FROM estoque WHERE codigo_estoque = 'EST016'), 15, 'MG', 'Belo Horizonte');  -- Ricardo Barbosa
