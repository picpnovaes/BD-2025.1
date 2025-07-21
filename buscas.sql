
SELECT 
    c.nome AS cliente,
    f.titulo AS filme,
    p.nome AS promocao,
    a.data_aluguel
FROM Aluguel AS a
JOIN Promocao AS p ON a.promocao_id = p.id
JOIN Cliente AS c ON a.cliente_cpf = c.cpf
JOIN Item AS i ON a.item_id = i.id
JOIN Filme AS f ON i.filme_codigo = f.codigo
WHERE p.nome = 'Dia dos Namorados'



SELECT
    f.titulo
FROM Filme AS f
JOIN Filme_Genero AS fg ON f.codigo = fg.filme_codigo
JOIN Genero AS g ON fg.genero_id = g.id
WHERE g.nome IN ('Ação', 'Ficção Científica')
GROUP BY f.titulo
HAVING COUNT(DISTINCT g.nome) = 2



SELECT 
    f.titulo,
    ROUND(AVG(av.nota), 2) AS nota_media,
    COUNT(av.id) AS total_avaliacoes
FROM Filme AS f
LEFT JOIN Avaliacao AS av ON f.codigo = av.filme_codigo
GROUP BY f.titulo
HAVING COUNT(av.id) > 1
ORDER BY nota_media DESC



SELECT
    c.nome AS cliente,
    f.titulo AS filme_reservado,
    r.data_reserva,
    DATEDIFF(CURDATE(), DATE(r.data_reserva)) AS dias_de_espera
FROM Reserva AS r
JOIN Cliente AS c ON r.cliente_cpf = c.cpf
JOIN Filme AS f ON r.filme_codigo = f.codigo
WHERE r.status_reserva = 'Ativa'
ORDER BY dias_de_espera DESC



SELECT
    f.titulo,
    i.formato,
    id.descricao_dano,
    func.nome AS funcionario_responsavel,
    id.data_ocorrencia
FROM Item_Danificado AS id
JOIN Item AS i ON id.item_id = i.id
JOIN Filme AS f ON i.filme_codigo = f.codigo
JOIN Funcionario AS func ON id.funcionario_cpf = func.cpf



SELECT
    p.nome AS promocao,
    COUNT(a.id) AS vezes_utilizada,
    SUM(a.valor) AS arrecadacao_bruta,
    ROUND(SUM(a.valor * (p.percentual_desconto / 100)), 2) AS total_desconto_concedido
FROM Aluguel AS a
JOIN Promocao AS p ON a.promocao_id = p.id
GROUP BY p.nome



SELECT
    'Aluguel' AS tipo_evento,
    a.data_aluguel AS data,
    c.nome AS responsavel,
    CONCAT('Devolvido em: ', a.data_devolucao) AS detalhes
FROM Aluguel AS a
JOIN Cliente AS c ON a.cliente_cpf = c.cpf
WHERE a.item_id = 3
UNION ALL
SELECT
    'Dano Registrado' AS tipo_evento,
    id.data_ocorrencia AS data,
    f.nome AS responsavel,
    id.descricao_dano AS detalhes
FROM Item_Danificado AS id
JOIN Funcionario AS f ON id.funcionario_cpf = f.cpf
WHERE id.item_id = 3
ORDER BY data



SELECT
    c.nome,
    COUNT(DISTINCT a.id) AS total_alugueis,
    COUNT(DISTINCT r.id) AS total_reservas,
    COUNT(DISTINCT av.id) AS total_avaliacoes
FROM Cliente AS c
LEFT JOIN Aluguel AS a ON c.cpf = a.cliente_cpf
LEFT JOIN Reserva AS r ON c.cpf = r.cliente_cpf
LEFT JOIN Avaliacao AS av ON c.cpf = av.cliente_cpf
GROUP BY c.nome
HAVING (COUNT(DISTINCT a.id) + COUNT(DISTINCT r.id) + COUNT(DISTINCT av.id)) > 5
ORDER BY (COUNT(DISTINCT a.id) + COUNT(DISTINCT r.id) + COUNT(DISTINCT av.id)) DESC



SELECT
    g.nome AS genero,
    ROUND(AVG(av.nota), 2) AS nota_media_genero
FROM Genero AS g
JOIN Filme_Genero AS fg ON g.id = fg.genero_id
JOIN Avaliaco AS av ON fg.filme_codigo = av.filme_codigo
GROUP BY g.nome
ORDER BY nota_media_genero DESC



SELECT DISTINCT
    func.nome AS funcionario
FROM Item_Danificado AS id
JOIN Funcionario AS func ON id.funcionario_cpf = func.cpf
JOIN Item AS i ON id.item_id = i.id
JOIN Filme_Genero AS fg ON i.filme_codigo = fg.filme_codigo
JOIN Genero AS g ON fg.genero_id = g.id
WHERE g.nome = 'Aventura'