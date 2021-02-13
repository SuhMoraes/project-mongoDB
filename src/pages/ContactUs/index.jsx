import Header from '../../components/Header';
import Footer from '../../components/Footer';

import emailIcon from '../../imagens/email.jpg';
import whatsIcon from '../../imagens/whatsapp.jpg';

import './styles.css';
import { useEffect, useState } from 'react';

import api from '../../services/api';

const ContactUs = () => {
  const [nome, setNome] = useState('');
  const [comentario, setComentario] = useState('');
  const [comentarios, setComentarios] = useState([]);

  useEffect(() => {
    async function buscarComentarios() {
      const response = await api.get('comentarios');

      setComentarios(response.data);
    }
    // buscando dados
    buscarComentarios();
  }, [comentarios]);

  async function enviarDadosparaObanco(e) {
    e.preventDefault();

    if (nome !== '' && comentario !== '') {
      await api.post('/comentarios', {
        nome,
        comentario,
      });
    }

    setNome('');
    setComentario('');
  }

  return (
    <>
      <Header />
      <h2>Contato</h2>
      <hr />

      <section className='contatos'>
        <div className='contato'>
          <img src={emailIcon} width='40px' alt='Ícone de email' />
          <p>contato@fullstackeletro.com</p>
        </div>

        <div className='contato'>
          <img src={whatsIcon} width='40px' alt='Ícone do whatsapp' />
          <p>(11) 9999-9999</p>
        </div>
      </section>
      <div className='container mb-5'>
        <form
          onSubmit={enviarDadosparaObanco}
          className='feedback bg-success text-dark'
          method='POST'
        >
          <div className='form-group'>
            <label htmlFor='exampleFormControlInput1'>Nome:</label>
            <input
              type='text'
              className='form-control'
              name='nome'
              id='exampleFormControlInput1'
              value={nome}
              onChange={(e) => setNome(e.target.value)}
            />
          </div>

          <div className='form-group'>
            <label htmlFor='exampleFormControlTextarea1'>Mensagem:</label>
            <textarea
              className='form-control'
              name='mensagem'
              id='exampleFormControlTextarea1'
              rows='3'
              value={comentario}
              onChange={(e) => setComentario(e.target.value)}
            ></textarea>
          </div>

          <input className='btn btn-warning' type='submit' value='Enviar' />
        </form>
      </div>

      {comentarios.map((item) => (
        <div className='card' key={item.id}>
          <h3>{item.nome}</h3>
          <p>{item.comentario}</p>
        </div>
      ))}

      <Footer />
    </>
  );
};

export default ContactUs;
