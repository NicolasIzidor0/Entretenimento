//Import das bibliotecas
const express = require('express')

//Importar as consultas SQL do arquivo functions.js
const consult = require('./functions')
const routers = express.Router()

//Rota raiz do servidor
routers.get('/', (req, res) => {
    res.status(200).json({ msg: "BEM - VINDO(A) A API" })
})

//Rota para listar os colaboradores
routers.get('/listarcolaboradores', async (req, res) => {
    try {
        const get = await consult.getAll() //Função para listar informações
        res.status(200).json(get)
    }
    catch (erro) {
        console.log(erro)
    }
})

//Rota para cadastrar um colaborador
routers.post('/cadastrarcolaboladores', async (req, res) => {
    const { id, nome, sobrenome, email, cpf, rg, telefone, sexo, endereco, cor, data_nascimento, senha, nacionalidade } = req.body
    console.log(res.body)
    try {
        //Chamada da função register para cadastrar um usuario
        const cadastrar = await consult.register(id, nome, sobrenome, email, cpf, rg, telefone, sexo, endereco, cor, data_nascimento, senha, nacionalidade)
        res.status(200).json({ msg: "Usuário cadastrado com sucesso!!!" })
    }
    catch (erro) {
        console.log(erro)
    }
})

module.exports = routers


