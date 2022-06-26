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

SELECT 
    RIGHT(data_lancamento, 4) AS ano,
    COUNT(RIGHT(data_lancamento, 4)) AS frequencia
FROM
    steam_db.jogos
    WHERE steam_db.jogos.genero like "%indie%"
GROUP BY ano
ORDER BY frequencia DESC
LIMIT 5;
