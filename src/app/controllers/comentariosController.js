const mongoose = require('mongoose');

require('../models/comentario')

const Comentario = mongoose.model('comentarios')

module.exports = {
  async criarComentario(request, response){
    const { nome, comentario } = request.body
    const comentarioCriado = await Comentario.create({
      nome,
      comentario
    })
    return response.json(comentarioCriado);
  },
  async listarComentarios(request, response){
    const comentarios = await Comentario.find()
    return response.json(comentarios);
  }
}