CREATE TABLE clientes(
    id  int(11) PRIMARY KEY AUTO_INCREMENT,
    nome  varchar(100) NOT NULL,
    email  varchar(100) NOT NULL UNIQUE,
    CPF  char(14) NOT NULL UNIQUE,
    RG  char(12) NOT NULL,
    telefone  char(11) NOT NULL,
    sexo  char(1) NOT NULL,
    endereco  varchar(100) NOT NULL,
    cor  varchar(20) NOT NULL,
    data_Nacimento  date NOT NULL,
    senha  varchar(50) NOT NULL,
    nacionalidade  varchar(30) NOT NULL
);
CREATE TABLE contato(
      id  int(11) PRIMARY KEY AUTO_INCREMENT,
      email  varchar(100) NOT NULL UNIQUE,
      observacao  text
	  );

CREATE TABLE empresa(
      id (11)PRIMARY KEY AUTO_INCREMENT,
      nome  varchar(10) NOT NULL,
      email  varchar(100)NOT NULL UNIQUE,
      CNPJ char(18)NOT NULL UNIQUE,
      telefone  char(11) NOT NULL,
      endereco  varchar(100) NOT NULL,
      responsavel_Id  (11)  NOT NULL UNIQUE    
       );

CREATE TABLE pacote (
     pacote_id int(11) NOT NULL UNIQUE,
     id  int(11)PRIMARY KEY AUTO_INCREMENT,
     destino  varchar(50)NOT NULL,
     valor  varchar(50)NOT NULL,
     duracao  varchar(10)NOT NULL,
     nome  varchar(100)NOT NULL,
     observacao - text
	 );
