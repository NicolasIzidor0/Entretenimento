//ARQUIVO DE FUNÇÕES PARA REALIZAR AS CONSULTAS NA TABELA DO BANCO DE DADOS
//IMPORT DA CONEXÃO DO BANCO
const connection = require('./db')

//LISTAR TODOS DADOS DO BANCO
module.exports.getAll = async () => { //async Ele espera fazer uma conexão
    const [result] = await connection.query("SELECT * FROM clientes")
        .catch(erro => console.log(erro))
    return result
}

//CADASTRAR DADOS NO BANCO
module.exports.register = async (id, nome, sobrenome, email, cpf, rg, telefone, sexo, endereco, cor, data_nascimento, senha, nacionalidade) => {
    const [result] = await connection.query("INSERT INTO clientes VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)", [id, nome, sobrenome, email, cpf, rg, telefone, sexo, endereco, cor, data_nascimento, senha, nacionalidade])
        .catch(erro => console.log(erro))
    return result
}



