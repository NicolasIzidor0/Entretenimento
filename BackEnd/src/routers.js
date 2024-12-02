const express = require('express');
const connection = require('./db');
const bcrypt = require('bcrypt');
const salt = 10; 
const routers = express.Router();

    routers.get('/', (req,res)=>{
        res.status(200).json({msg:"Bem - Vindo(a) a API"})
    });

    //rota para cadastratar alunos
    routers.post('/api/cadastrar', async(req, res)=>{
        const{id,nome,sobrenome,email,cpf,rg,telefone,sexo,endereco,cor,data_nascimento,senha,nacionalidade} = req.body;
        console.log(req.body);

        const password = await bcrypt.hash(senha,salt)
        console.log(password);

        try{
            //chamada da função para cadastrar um usuário
            const cadastrar = connection.query("INSERT INTO clientes values(?,?,?,?,?,?,?,?,?,?,?,?,?)",[id,nome,sobrenome,email,cpf,rg,telefone,sexo,endereco,cor,data_nascimento,senha,nacionalidade], (erro)=>{
                if (erro){
                    res.status(401).json({msg:"Erro ao cadastrar"})
                }
                else{
                    res.status(200).json({msg:"Usuário cadastrado com sucesso!!!"});
                }
            })
    
            
        }
        catch(erro){
            console.log(erro)
        }
    });

routers.post('/api/login',async(req,res)=>{
    const {email,senha} = req.body

    const sql = "SELECT * FROM alunos WHERE email = ?"

    try{
        const [rows] = await connection.promise().query(sql,[email]);

        console.log(rows[0].sobrenome)

        if(rows.length > 0){
            const match = await bcrypt.compare(senha,rows[0].senha);

            if(match){
                res.status(200).json({msg:"Sucesso", nome:rows[0].nome})
            }
            else{
                res.status(401).json({msg:"Email ou senha incorretos"})
            }
        }
        else{
            res.status(400).json({msg:"Erro"})
        }

    }
    catch(erro){
        console.log(erro)
    }
})

    module.exports = routers;