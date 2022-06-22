CREATE DATABASE steam_db;
use steam_db;

CREATE TABLE jogos (
    appid BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    nome VARCHAR (255),
    data_lancamento VARCHAR (255),
    genero VARCHAR (255),
    tempo_de_jogo_medio INT,
    preco_jogo FLOAT,
    classificacao_indicativa VARCHAR (255)
);

CREATE TABLE categorias (
    id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    nome_categoria VARCHAR (255),
    appid BIGINT,
    CONSTRAINT fk_appid_categorias FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

CREATE TABLE plataformas (
    id_plataforma INT PRIMARY KEY AUTO_INCREMENT not null,
    nome_plataforma VARCHAR (255),
    appid BIGINT,
    CONSTRAINT fk_appid_plataformas FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

CREATE TABLE publisher (
    nome_publisher VARCHAR (255) PRIMARY KEY,
    appid BIGINT,
    CONSTRAINT fk_appid_publisher FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

CREATE TABLE desenvolvedores (
    nome_desenvolvedor VARCHAR (255) PRIMARY KEY,
    appid BIGINT,
    CONSTRAINT fk_appid_desenvolvedores FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

CREATE TABLE avaliacoes (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT not null,
    appid BIGINT,
    avaliacoes_positivas VARCHAR (255),
    avaliacoes_negativas VARCHAR (255),
    CONSTRAINT fk_appid_avaliacoes FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);