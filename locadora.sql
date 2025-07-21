CREATE TABLE Reserva (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_cpf VARCHAR(11) NOT NULL,
    filme_codigo INT NOT NULL,
    data_reserva DATETIME NOT NULL,
    status_reserva VARCHAR(20) DEFAULT 'Ativa', 
    FOREIGN KEY (cliente_cpf) REFERENCES Cliente(cpf),
    FOREIGN KEY (filme_codigo) REFERENCES Filme(codigo)
)

CREATE TABLE Promocao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    percentual_desconto DECIMAL(5, 2) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE
)


ALTER TABLE Aluguel
ADD COLUMN promocao_id INT DEFAULT NULL,
ADD FOREIGN KEY (promocao_id) REFERENCES Promocao(id)

CREATE TABLE Avaliacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_cpf VARCHAR(11) NOT NULL,
    filme_codigo INT NOT NULL,
    nota INT CHECK (nota >= 1 AND nota <= 5), 
    comentario TEXT,
    data_avaliacao DATETIME NOT NULL,
    FOREIGN KEY (cliente_cpf) REFERENCES Cliente(cpf),
    FOREIGN KEY (filme_codigo) REFERENCES Filme(codigo)
)

CREATE TABLE Item_Danificado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    funcionario_cpf VARCHAR(11) NOT NULL,
    data_ocorrencia DATE NOT NULL,
    descricao_dano VARCHAR(255) NOT NULL,
    status_reparo VARCHAR(50) DEFAULT 'Pendente', 
    FOREIGN KEY (item_id) REFERENCES Item(id),
    FOREIGN KEY (funcionario_cpf) REFERENCES Funcionario(cpf)
)

CREATE TABLE Genero (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) UNIQUE NOT NULL
)


CREATE TABLE Filme_Genero (
    filme_codigo INT NOT NULL,
    genero_id INT NOT NULL,
    PRIMARY KEY (filme_codigo, genero_id),
    FOREIGN KEY (filme_codigo) REFERENCES Filme(codigo),
    FOREIGN KEY (genero_id) REFERENCES Genero(id)
)

ALTER TABLE Filme DROP COLUMN genero;