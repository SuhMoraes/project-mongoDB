const mongoose = require('mongoose');

function connect(){
  mongoose.connect('mongodb://localhost/newfullstackeletro', {
    useNewUrlParser:true, useUnifiedTopology:true
  }).then(() => console.log('Banco conectado com sucesso!')).catch((erro) => console.log(`Erro no banco ${erro}`))

}

module.exports = connect()