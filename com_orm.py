from sqlalchemy import create_engine, Column, Integer, String, TIMESTAMP, ForeignKey
from sqlalchemy.orm import declarative_base, sessionmaker, relationship
from sqlalchemy.sql import func


DATABASE_URL = "mysql+mysqlconnector://root:senha1960@127.0.0.1/bd_atvd"


engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

class Cliente(Base):
    __tablename__ = "clientes"
    
    id = Column(Integer, primary_key=True, index=True)
    nome = Column(String(100), nullable=False)
    email = Column(String(100), unique=True, nullable=False)
    
    pedidos = relationship("Pedido", back_populates="cliente", cascade="all, delete-orphan")

class Pedido(Base):
    __tablename__ = "pedidos"
    
    id = Column(Integer, primary_key=True, index=True)
    produto = Column(String(100), nullable=False)
 
    data = Column(TIMESTAMP, nullable=False, server_default=func.now())
    cliente_id = Column(Integer, ForeignKey("clientes.id"), nullable=False)
    
    cliente = relationship("Cliente", back_populates="pedidos")

def main_com_orm():
    db_session = SessionLocal()
    try:
        print("✅ Sessão com o banco de dados via SQLAlchemy iniciada!")

 
        print("\nLimpeza das tabelas...")
        db_session.query(Pedido).delete()
        db_session.query(Cliente).delete()
        db_session.commit()
        print("Tabelas limpas.")


        print("\n--- Inserindo dados ---")
        

        cliente1 = Cliente(nome="João da Silva", email="joao.silva@email.com")
        cliente2 = Cliente(nome="Maria Oliveira", email="maria.oliveira@email.com")


        pedido1 = Pedido(produto="Laptop Dell", cliente=cliente1)
        pedido2 = Pedido(produto="Monitor LG Ultrawide", cliente=cliente2)
        pedido3 = Pedido(produto="Mouse sem fio Logitech", cliente=cliente1)


        db_session.add_all([pedido1, pedido2, pedido3])
        db_session.commit()
        print("Clientes e pedidos inseridos com sucesso.")


        print("\n--- Consulta de Pedidos por Cliente ---")
        

        resultados = db_session.query(Cliente.nome, Pedido.produto).join(Pedido).order_by(Cliente.nome, Pedido.produto).all()
        
        for nome_cliente, nome_produto in resultados:
            print(f"Cliente: {nome_cliente}, Comprou: {nome_produto}")

    except Exception as e:
        print(f"❌ Ocorreu um erro: {e}")
        db_session.rollback()
    finally:
        db_session.close()
        print("\nSessão com o banco de dados fechada.")

if __name__ == "__main__":
    main_com_orm()