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