# Quais são as 10 categorias mais populares de jogos na Steam?

SELECT DISTINCT
    nome_categoria, COUNT(nome_categoria) AS contador
FROM
    steam_db.categorias
GROUP BY nome_categoria
ORDER BY contador DESC
LIMIT 10;

# Quais são as 10 categorias mais populares de jogos indie na Steam?

# Qual ano mais foi lançado jogos na Steam?

# Qual ano mais foi lançado jogos indie na Steam?