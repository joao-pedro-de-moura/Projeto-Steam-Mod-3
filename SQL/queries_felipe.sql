SELECT * FROM steam_db.jogos;

# Quantos jogos indie tem na steam?
SELECT 
    COUNT(genero)
FROM
    steam_db.jogos
WHERE
    genero LIKE '%Indie%';
    

