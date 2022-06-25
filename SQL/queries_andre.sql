# Quais são as 5 categorias mais populares de jogos na Steam?

SELECT DISTINCT
    nome_categoria, COUNT(nome_categoria) AS contador
FROM
    steam_db.categorias
GROUP BY nome_categoria
ORDER BY contador DESC
LIMIT 5;

# Quais são as 5 categorias mais populares de jogos indie na Steam?

SELECT
    steam_db.categorias.nome_categoria, COUNT(steam_db.categorias.nome_categoria) AS contador
FROM
    steam_db.categorias
    INNER JOIN steam_db.jogos
    ON steam_db.categorias.appid = steam_db.jogos.appid
    WHERE steam_db.jogos.genero like "%indie%"
GROUP BY nome_categoria
ORDER BY contador DESC
LIMIT 5;

# Qual ano mais foi lançado jogos na Steam?

SELECT 
    RIGHT(data_lancamento, 4) AS ano,
    COUNT(RIGHT(data_lancamento, 4)) AS frequencia
FROM
    steam_db.jogos
GROUP BY ano
ORDER BY frequencia DESC
LIMIT 5;

# Qual ano mais foi lançado jogos indie na Steam?