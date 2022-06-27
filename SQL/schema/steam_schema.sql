CREATE DATABASE steam_db;
use steam_db;

CREATE TABLE jogos (
    appid BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    nome VARCHAR (255),
    data_lancamento VARCHAR (255),
    genero VARCHAR (255),
    tempo_de_jogo_medio INT,
    preco_jogo DOUBLE,
    classificacao_indicativa VARCHAR (255)
);

CREATE TABLE categorias (
    id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    nome_categoria TEXT,
    appid BIGINT,
    CONSTRAINT fk_appid_categorias FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

CREATE TABLE plataformas (
    id_plataforma BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    nome_plataforma VARCHAR (255),
    appid BIGINT,
    CONSTRAINT fk_appid_plataformas FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

CREATE TABLE publisher (
	id_publisher BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    nome_publisher VARCHAR (255),
    appid BIGINT,
    CONSTRAINT fk_appid_publisher FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

CREATE TABLE desenvolvedores (
	id_desenvolvedores BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    nome_desenvolvedor VARCHAR (255),
    appid BIGINT,
    CONSTRAINT fk_appid_desenvolvedores FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);


CREATE TABLE avaliacoes (
    id_avaliacao BIGINT PRIMARY KEY AUTO_INCREMENT not null,
    appid BIGINT,
    avaliacoes_positivas INT,
    avaliacoes_negativas INT,
    CONSTRAINT fk_appid_avaliacoes FOREIGN KEY (appid)
 REFERENCES jogos(appid)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);