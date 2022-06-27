#Quais são os top 5 jogos indie mais bem avaliados?
SELECT 
    jogos.nome,
    avaliacoes.avaliacoes_positivas
FROM
    jogos
        INNER JOIN
    avaliacoes ON jogos.appid = avaliacoes.appid
WHERE
    genero LIKE '%Indie%'
GROUP BY nome
ORDER BY avaliacoes_positivas DESC
LIMIT 5;