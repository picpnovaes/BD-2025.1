import mysql.connector
from mysql.connector import errorcode


DB_CONFIG = {
    'user': 'root',  
    'password': 'senha1960',  
    'host': '127.0.0.1',
    'database': 'bd_atvd'
}

def main_sem_orm():
    try:

        cnx = mysql.connector.connect(**DB_CONFIG)
        cursor = cnx.cursor()
        print("✅ Conexão com o banco de dados MySQL bem-sucedida!")

        print("\nLimpeza das tabelas...")
        cursor.execute("SET FOREIGN_KEY_CHECKS = 0;")
        cursor.execute("TRUNCATE TABLE Pedidos;")
        cursor.execute("TRUNCATE TABLE Clientes;")
        cursor.execute("SET FOREIGN_KEY_CHECKS = 1;")
        print("Tabelas limpas.")

        print("\n--- Inserindo dados ---")
        
        sql_insert_cliente = "INSERT INTO Clientes (nome, email) VALUES (%s, %s)"
        
        cursor.execute(sql_insert_cliente, ('João da Silva', 'joao.silva@email.com'))
        id_cliente1 = cursor.lastrowid 
        
        cursor.execute(sql_insert_cliente, ('Maria Oliveira', 'maria.oliveira@email.com'))
        id_cliente2 = cursor.lastrowid
        
        print(f"Clientes inseridos com IDs: {id_cliente1} e {id_cliente2}")

        sql_insert_pedido = "INSERT INTO Pedidos (cliente_id, produto) VALUES (%s, %s)"
        pedidos = [
            (id_cliente1, 'Laptop Dell'),
            (id_cliente2, 'Monitor LG Ultrawide'),
            (id_cliente1, 'Mouse sem fio Logitech')
        ]
        
        for pedido in pedidos:
            cursor.execute(sql_insert_pedido, pedido)
        
        print(f"{len(pedidos)} pedidos inseridos.")

        
        cnx.commit()
        print("Dados commitados no banco.")

      
        print("\n--- Consulta de Pedidos por Cliente ---")
        
        query_join = """
            SELECT c.nome, p.produto
            FROM Clientes c
            JOIN Pedidos p ON c.id = p.cliente_id
            ORDER BY c.nome, p.produto;
        """
        cursor.execute(query_join)
        
        for (nome_cliente, nome_produto) in cursor:
            print(f"Cliente: {nome_cliente}, Comprou: {nome_produto}")

    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("❌ Erro: Usuário ou senha do banco de dados estão incorretos.")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("❌ Erro: O banco de dados especificado não existe.")
        else:
            print(f"❌ Erro: {err}")
    finally:
        if 'cnx' in locals() and cnx.is_connected():
            cursor.close()
            cnx.close()
            print("\nConexão com o banco de dados fechada.")

if __name__ == "__main__":
    main_sem_orm()