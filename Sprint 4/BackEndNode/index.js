//ARQUIVO PARA CRIAR A URL DE CONEXÃO DA API
//Import das bibliotecas a serem utilizadas
const express = require('express') 
const client = require('./db') //Import da variável do arquivo db.js
const routers = require('./routers') //Import da variável do arquivo routers.js

//Uso do objeto express
const app = express()

app.use(express.json()) //Aceitar objetos no formato JSON
app.use(routers) //Uso das rotas criadas para a API

//Criar a conexão do servidor
client.query('select 1')
.then(()=>{
    console.log('sucess')
    app.listen(8081, function(){
        console.log("Servidor executando na url: http://localhost:8081")
    })
})
.catch(erro => console.log("db connection failed"))
