const mongoose = require('mongoose');

const Schema = mongoose.Schema;

const Comentario = new Schema({
  nome:{ type:String },
  comentario:{ type:String }
})
mongoose.model('comentarios', Comentario)
