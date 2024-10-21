CREATE TABLE clientes(
    id - int(11) PRIMARY KEY AUTO_INCREMENT,
    nome - varchar(100) NOT NULL,
    email - varchar(100) NOT NULL UNIQUE,
    CPF - char(14) NOT NULL UNIQUE,
    RG - char(12) NOT NULL,
    telefone - char(11) NOT NULL,
    sexo - char(1) NOT NULL,
    endereco - varchar(100) NOT NULL,
    cor - varchar(20) NOT NULL,
    data_Nacimento - date NOT NULL,
    senha - varchar(50) NOT NULL,
    nacionalidade - varchar(30) NOT NULL
);
