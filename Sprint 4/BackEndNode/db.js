//ARQUIVO DB É UTILIZADO PARA CRIAR A CONEXÃO COM O BANCO DE DADOS
const mysql = require('mysql2/promise')

//Criar a conexão com o Banco de Dados 
//String para se comunicar com o banco
const client = mysql.createPool({
    host:"localhost", //host do banco de dados
    port: 3306, //porta padrão do DB
    user:"root", //usuário padrão do DB
    password:"admin", //senha do Banco de Dados
    database:"upviagens" //nome do banco de dados 
})

module.exports = client
