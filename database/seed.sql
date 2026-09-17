-- ==============================================================================
-- DML - Kid's Play Finder (Dados de Teste / Seeds)
-- ==============================================================================

-- 1. Inserindo Usuários
INSERT INTO Usuario (nome, email, senha_hash, localizacao_atual) 
VALUES 
('João Silva', 'joao.silva@email.com', 'hash_criptografado_123', 'Centro, Maringá'),
('Maria Oliveira', 'maria.oliveira@email.com', 'hash_criptografado_456', 'Zona 7, Maringá');

-- 2. Inserindo Estabelecimentos (Contexto Maringá)
INSERT INTO Estabelecimento (nome_fantasia, endereco, telefone, nota_tripadvisor, latitude, longitude) 
VALUES 
('Pizzaria Família Kids', 'Av. Tiradentes, 1000 - Zona 1, Maringá - PR', '44999999999', 4.5, -23.425269, -51.938208),
('Lanchonete Burger Play', 'Av. Colombo, 5000 - Zona 7, Maringá - PR', '44988888888', 4.2, -23.400000, -51.940000);

-- 3. Inserindo Playgrounds (Relacionados aos estabelecimentos 1 e 2)
INSERT INTO Playground (id_estabelecimento, tamanho_area, estado_conservacao, possui_monitoria, faixa_etaria_monitoria, conformidade_nbr, data_ultima_inspecao) 
VALUES 
(1, 25.50, 'Excelente', TRUE, 4, TRUE, '2026-08-15'),
(2, 10.00, 'Regular', FALSE, NULL, FALSE, '2025-12-10');

-- 4. Inserindo o Domínio de Brinquedos (Obrigatório pela 1FN)
INSERT INTO Brinquedo (nome) VALUES 
('Piscina de Bolinhas'),
('Escorregador'),
('Cama Elástica'),
('Labirinto');

-- 5. Associando Brinquedos aos Playgrounds (Relação N:N)
-- Playground 1 tem Piscina de Bolinhas (1), Escorregador (2) e Cama Elástica (3)
INSERT INTO Playground_Brinquedo (id_playground, id_brinquedo) VALUES 
(1, 1), (1, 2), (1, 3);
-- Playground 2 tem apenas Labirinto (4)
INSERT INTO Playground_Brinquedo (id_playground, id_brinquedo) VALUES 
(2, 4);

-- 6. Inserindo Avaliações
INSERT INTO Avaliacao (id_usuario, id_estabelecimento, nota_geral, comentario) 
VALUES 
(1, 1, 5, 'Ótima infraestrutura! Monitores muito atenciosos com as crianças.'),
(2, 2, 3, 'Lanche bom, mas o playground precisa de manutenção. Brinquedos desgastados.');