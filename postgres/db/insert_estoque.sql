/* ESTOQUE ↓ */
-- Inserindo Carros no Estoque (Para cada filial)
-- Matriz (Filial 1)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Fusca', 'Volkswagen', 2020, 'Azul', 35000.00, 1, 'EST001'),
('Gol', 'Volkswagen', 2021, 'Preto', 45000.00, 1, 'EST002'),
('Civic', 'Honda', 2022, 'Branco', 120000.00, 1, 'EST003'),
('Fiorino', 'Fiat', 2021, 'Vermelho', 75000.00, 1, 'EST004'),
('Tucson', 'Hyundai', 2023, 'Cinza', 150000.00, 1, 'EST005');

-- Filial São Paulo (Filial 2)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Onix', 'Chevrolet', 2021, 'Prata', 55000.00, 2, 'EST006'),
('Corolla', 'Toyota', 2022, 'Branco', 115000.00, 2, 'EST007'),
('HB20', 'Hyundai', 2021, 'Preto', 48000.00, 2, 'EST008'),
('Kwid', 'Renault', 2023, 'Amarelo', 45000.00, 2, 'EST009'),
('EcoSport', 'Ford', 2022, 'Azul', 78000.00, 2, 'EST010');

-- Filial Rio de Janeiro (Filial 3)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Civic', 'Honda', 2023, 'Vermelho', 120000.00, 3, 'EST011'),
('Gol', 'Volkswagen', 2022, 'Branco', 55000.00, 3, 'EST012'),
('Astra', 'Chevrolet', 2021, 'Cinza', 49000.00, 3, 'EST013'),
('Fiesta', 'Ford', 2022, 'Preto', 60000.00, 3, 'EST014'),
('Compass', 'Jeep', 2023, 'Prata', 135000.00, 3, 'EST015');

-- Filial Paraná (Filial 4)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Argo', 'Fiat', 2021, 'Verde', 50000.00, 4, 'EST016'),
('Toro', 'Fiat', 2022, 'Azul', 120000.00, 4, 'EST017'),
('S10', 'Chevrolet', 2023, 'Preto', 130000.00, 4, 'EST018'),
('Palio', 'Fiat', 2020, 'Branco', 40000.00, 4, 'EST019'),
('Tracker', 'Chevrolet', 2022, 'Cinza', 85000.00, 4, 'EST020');

-- Filial Minas Gerais (Filial 5)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Jetta', 'Volkswagen', 2023, 'Prata', 115000.00, 5, 'EST021'),
('Tucson', 'Hyundai', 2023, 'Branco', 140000.00, 5, 'EST022'),
('Fit', 'Honda', 2022, 'Azul', 70000.00, 5, 'EST023'),
('HR-V', 'Honda', 2021, 'Preto', 85000.00, 5, 'EST024'),
('Rav4', 'Toyota', 2023, 'Verde', 150000.00, 5, 'EST025');
