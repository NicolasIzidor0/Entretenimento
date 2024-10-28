/*
Entidade é um objeto(aquilo que é colocado atributos)
EX: SENAI
nome
endereço
cnpj
cidade
código

Tipos de dados SQL
Tipos para números
int - inteiro ex: 1, 2, 3 ...
float - decimal ex: 10.10, 10.3, 99.99 ...

Tipos para texto
char - caracter ex: A, B, C, DEF ...
Obs: O campo do tipo char, vai possuir 
sempre o tamanho definido em sua criação.
varchar
Obs: O campo do tipo varchar, vai aumentar 
e diminuir de acordo com o tamanho do dado
respeitando sempre o tamanho definido.

text
Obs: O campo do tipo text, se NÃO definido
um tamanho padrão, vai alocar todo o texto.

data

date - Ano, mês e dia no padrão americano 
EX: 2024-09-18 (Ano, mês e dia)
datetime - Ano, mês, dia e horário
no padrão americano
EX: 2024-09-18 11:42:42 

*/
clientes 
      id - int(11)
      nome - varchar(100)
      email - varchar(100)
      CPF - char(14)
      RG - char(12)
      telefone - char(11)
      sexo - char(1)
      endereco - varchar(100)
      cor - varchar(20)
      data_Nacimento - date
      senha - varchar(50)
      nacionalidade - varchar(30)


contato
      id - int(11) 
      email - varchar(100)
      observacao - text
      FOREIGN KEY(empresa_id) REFERENCES empresa(id)


empresa
      id - (11)
      nome - varchar(10)
      email - varchar(100)
      CNPJ - char(18)
      telefone - char(11)
      endereco - varchar(100)
      responsavel_id - (11)
      pacote_id int (11) NOT NULL
      cliente_id int (11) NOT NULL
      FOREIGN KEY(pacote_id) REFERENCES pacote(id)
       

pacote 
     id - int(11)
     id - int(11)
     destino - varchar(50)
     valor - varchar(50)
     duracao - varchar(10)
     nome - varchar(100)
     observacao - text

/*#Cardinalidade e Obrigatoriedade
# (0, 1)
# 0(Obrigatoriedade) = Não é necessário ter pelo menos 1 registro
# 1(Cardinalidade) = Deverá ter somente um registro
# (1, 1)
# 1(Obrigatoriedade) = É necessário ter pelo menos 1 registro
# 1(Cardinalidade) = Deverá ter somente um registro
# (0, N)
# 0(Obrigatoriedade) = Não é necessário ter pelo menos 1 registro
# N(Cardinalidade) = Pode ter varios registros
# (1, N)
# 1(Obrigatoriedade) = É necessário ter pelo menos 1 registro
# N(Cardinalidade) = Pode ter varios registros

# Formas Normais

# 1ª Forma Normal
#Todo campo vetorial deverá virar uma nova tabela. (ENTIDADE)
#Todo campo multi valorado deverá virar uma nova tabela. (ENTIDADE)
#Toda tabela deverá ter uma chave relacionando com a tabela "pai"

# 2ª Forma Normal
# Quando uma entidade se relaciona com duas ou mais entidades
# Obrigatoriamente terá as chaves das outras entidades.

# 3ª Forma Normal
# Atributos só poderão ficar na entidade, se tiver relação
# com todos os relacionamentos, Se não tiver, deverá
# ser criada uma nova entidade.
*/