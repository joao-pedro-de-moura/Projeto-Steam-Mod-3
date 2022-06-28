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
    
#Quantos jogos indie desenvovidos são comaptíveis com todos os sistemas operacionais?
SELECT 
    COUNT(jogos.appid)
FROM
    jogos
        INNER JOIN
    plataformas ON jogos.appid = plataformas.appid
WHERE
    nome_plataforma LIKE '%windows_mac_linux%'
        AND genero LIKE '%indie%';    