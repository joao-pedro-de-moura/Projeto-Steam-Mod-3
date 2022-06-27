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

# Entre os 10 jogos mais bem avaliados, quais são desenvolvedores indie?
SELECT 
   nome, avaliacoes_positivas, nome_desenvolvedor
FROM
    (SELECT 
        jogos.nome,
            avaliacoes.avaliacoes_positivas,
            desenvolvedores.nome_desenvolvedor,
            jogos.genero
    FROM
        jogos
    INNER JOIN avaliacoes ON jogos.appid = avaliacoes.appid
    INNER JOIN desenvolvedores ON jogos.appid = desenvolvedores.appid
    GROUP BY nome
    ORDER BY avaliacoes_positivas DESC
    LIMIT 10) AS subquery
WHERE
    subquery.genero LIKE '%Indie%'
ORDER BY avaliacoes_positivas DESC;
