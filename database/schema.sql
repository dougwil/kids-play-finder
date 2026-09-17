-- ==============================================================================
-- DDL - Kid's Play Finder
-- Banco de Dados: PostgreSQL
-- Objetivo: Criação do esquema relacional normalizado
-- ==============================================================================

-- 1. Tabela de Usuários
CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL, 
    localizacao_atual VARCHAR(255)
);

-- 2. Tabela de Estabelecimentos
CREATE TABLE Estabelecimento (
    id_estabelecimento SERIAL PRIMARY KEY,
    nome_fantasia VARCHAR(150) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone VARCHAR(20), 
    nota_tripadvisor DECIMAL(3, 2), 
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL
);

-- 3. Tabela de Playgrounds (Relação 1:1 com Estabelecimento)
CREATE TABLE Playground (
    id_playground SERIAL PRIMARY KEY,
    id_estabelecimento INT UNIQUE NOT NULL,
    tamanho_area DECIMAL(6, 2),
    estado_conservacao VARCHAR(50) NOT NULL,
    possui_monitoria BOOLEAN DEFAULT FALSE,
    faixa_etaria_monitoria INT,
    conformidade_nbr BOOLEAN DEFAULT FALSE,
    data_ultima_inspecao DATE,
    CONSTRAINT fk_estabelecimento
        FOREIGN KEY (id_estabelecimento) 
        REFERENCES Estabelecimento(id_estabelecimento)
        ON DELETE CASCADE
);

-- 4. Tabela Domínio de Brinquedos (Normalização - 1FN)
CREATE TABLE Brinquedo (
    id_brinquedo SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

-- 5. Tabela Associativa: Playground_Brinquedo (Relação N:N)
CREATE TABLE Playground_Brinquedo (
    id_playground INT NOT NULL,
    id_brinquedo INT NOT NULL,
    PRIMARY KEY (id_playground, id_brinquedo),
    CONSTRAINT fk_pb_playground
        FOREIGN KEY (id_playground) 
        REFERENCES Playground(id_playground)
        ON DELETE CASCADE,
    CONSTRAINT fk_pb_brinquedo
        FOREIGN KEY (id_brinquedo) 
        REFERENCES Brinquedo(id_brinquedo)
        ON DELETE CASCADE
);

-- 6. Tabela de Avaliações (Relação 1:N com Usuario e Estabelecimento)
CREATE TABLE Avaliacao (
    id_avaliacao SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_estabelecimento INT NOT NULL,
    nota_geral INT CHECK (nota_geral >= 1 AND nota_geral <= 5), -- Regra de negócio validada no BD
    comentario TEXT,
    data_postagem DATE DEFAULT CURRENT_DATE,
    CONSTRAINT fk_aval_usuario
        FOREIGN KEY (id_usuario) 
        REFERENCES Usuario(id_usuario)
        ON DELETE CASCADE,
    CONSTRAINT fk_aval_estabelecimento
        FOREIGN KEY (id_estabelecimento) 
        REFERENCES Estabelecimento(id_estabelecimento)
        ON DELETE CASCADE
);