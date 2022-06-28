#Qual a média de preço dos jogos indie na Steam?
SELECT 
    AVG(preco_jogo)
FROM
    jogos
WHERE
    genero LIKE '%indie%';
    
#Qual a média de preço dos jogos nao indie na Steam?
SELECT 
    AVG(preco_jogo)
FROM
    jogos
WHERE
    NOT genero LIKE '%indie%';