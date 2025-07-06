USE bd_atvd;
CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,  
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,  
    cliente_id INT NOT NULL,
    produto VARCHAR(100) NOT NULL,
    data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    
    CONSTRAINT fk_cliente
        FOREIGN KEY(cliente_id) 
        REFERENCES Clientes(id)
        ON DELETE CASCADE
);
