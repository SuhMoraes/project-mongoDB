const cors = require('cors');

const express = require('express');
const comentariosController = require('./src/app/controllers/comentariosController')
const server = express();
require('./src/config/database');

server.use(cors());
server.use(express.json());
server.use(express.urlencoded({
  extended:true, 
}));

server.get('/comentarios', comentariosController.listarComentarios);

server.post('/comentarios', comentariosController.criarComentario);



server.listen(3333, function(){
  console.log('Servidor subiu!');
});