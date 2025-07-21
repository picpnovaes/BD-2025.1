

SELECT titulo, duracao_minutos FROM filme WHERE genero = 'Ação';


SELECT nome, data_nascimento FROM cliente WHERE data_nascimento >= '2000-01-01' ORDER BY data_nascimento;


SELECT id, cliente_cpf, valor FROM aluguel ORDER BY valor DESC LIMIT 5;


SELECT id, filme_codigo, idioma FROM item WHERE formato = 'VHS';


SELECT id, cliente_cpf, item_id, data_aluguel FROM aluguel WHERE data_devolucao IS NULL;


SELECT cpf, nome FROM funcionario WHERE nome LIKE '%Silva%';


SELECT DISTINCT genero FROM filme ORDER BY genero;


SELECT id, data_compra, valor_total FROM compra WHERE valor_total BETWEEN 1000.00 AND 1500.00;


SELECT titulo, genero FROM filme WHERE genero IN ('Romance', 'Drama');


SELECT codigo, nome FROM fornecedor ORDER BY nome DESC;




SELECT c.nome AS nome_cliente, f.titulo AS filme_alugado, a.data_aluguel
FROM aluguel AS a
JOIN cliente AS c ON a.cliente_cpf = c.cpf
JOIN item AS i ON a.item_id = i.id
JOIN filme AS f ON i.filme_codigo = f.codigo;


SELECT fu.nome AS funcionario, fo.nome AS fornecedor, c.data_compra, c.valor_total
FROM compra AS c
JOIN funcionario AS fu ON c.funcionario_cpf = fu.cpf
JOIN fornecedor AS fo ON c.fornecedor_codigo = fo.codigo;


SELECT f.titulo, i.formato, c.nome AS cliente, a.data_aluguel
FROM aluguel AS a
JOIN cliente AS c ON a.cliente_cpf = c.cpf
JOIN item AS i ON a.item_id = i.id
JOIN filme AS f ON i.filme_codigo = f.codigo
WHERE a.data_devolucao IS NULL;


SELECT f.titulo, COUNT(i.id) AS quantidade_de_copias
FROM filme AS f
LEFT JOIN item AS i ON f.codigo = i.filme_codigo
GROUP BY f.titulo
ORDER BY quantidade_de_copias DESC;


SELECT f.genero, SUM(a.valor) AS total_arrecadado
FROM aluguel AS a
JOIN item AS i ON a.item_id = i.id
JOIN filme AS f ON i.filme_codigo = f.codigo
GROUP BY f.genero
ORDER BY total_arrecadado DESC;


SELECT DISTINCT c.nome
FROM cliente AS c
JOIN aluguel AS a ON c.cpf = a.cliente_cpf
JOIN item AS i ON a.item_id = i.id
WHERE i.formato = 'Blu-Ray';


SELECT c.nome, ROUND(AVG(a.valor), 2) AS valor_medio_gasto
FROM cliente AS c
JOIN aluguel AS a ON c.cpf = a.cliente_cpf
GROUP BY c.nome
ORDER BY valor_medio_gasto DESC;


SELECT f.titulo
FROM filme AS f
LEFT JOIN item AS i ON f.codigo = i.filme_codigo
LEFT JOIN aluguel AS a ON i.id = a.item_id
WHERE a.id IS NULL
GROUP BY f.titulo;


SELECT f.nome AS funcionario, c.nome AS cliente, MAX(a.data_atendimento) AS ultimo_atendimento
FROM atendimento AS a
JOIN funcionario AS f ON a.funcionario_cpf = f.cpf
JOIN cliente AS c ON a.cliente_cpf = c.cpf
GROUP BY f.nome;


SELECT fo.nome, c.data_compra, c.valor_total
FROM compra AS c
JOIN fornecedor AS fo ON c.fornecedor_codigo = fo.codigo
WHERE c.valor_total = (SELECT MAX(valor_total) FROM compra);