#Quais são os Top 10 developers?
SELECT 
    COUNT(desenvolvedores.nome_desenvolvedor) AS quantidade,
    nome_desenvolvedor
FROM
    desenvolvedores
        INNER JOIN
    jogos ON desenvolvedores.appid = jogos.appid
GROUP BY nome_desenvolvedor
ORDER BY quantidade DESC
LIMIT 10;

#dentre o top 10 desenvolvedores, quais deles sao indie?
SELECT 
    nome_desenvolvedor, quantidade
FROM
    (SELECT 
        COUNT(desenvolvedores.nome_desenvolvedor) AS quantidade,
            nome_desenvolvedor,
            jogos.genero
    FROM
        desenvolvedores
    INNER JOIN jogos ON desenvolvedores.appid = jogos.appid
    GROUP BY nome_desenvolvedor
    ORDER BY quantidade DESC
    LIMIT 10) AS subquery
WHERE
    genero LIKE '%Indie%';