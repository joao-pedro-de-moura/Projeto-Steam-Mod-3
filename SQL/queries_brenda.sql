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

#Quais são os top 5 jogos não indie mais bem avaliado?
SELECT 
    jogos.nome,
    avaliacoes.avaliacoes_positivas
FROM
    jogos
        INNER JOIN
    avaliacoes ON jogos.appid = avaliacoes.appid
    WHERE NOT
    genero LIKE '%Indie%'
GROUP BY nome
ORDER BY avaliacoes_positivas DESC
LIMIT 5;

#Quantas horas foram jogadas no total em jogos indie na Steam? 
SELECT 
    SUM(jogos.tempo_de_jogo_medio)
FROM
    jogos
WHERE
    genero LIKE '%Indie%';