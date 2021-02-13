import pgImg from '../../imagens/formas-pagamento.jpeg';

const Footer = () => {
  return (
    <footer id='rodape' className='w-100 text-center bg-info'>
      <p id='formas_pagamento'>
        <b>Formas de pagamento</b>
      </p>
      <img width='420px' src={pgImg} alt='Formas de pagamento' />
      <p>&copy; Recode Pro</p>
    </footer>
  );
};

export default Footer;
