-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jan-2021 às 00:09
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `newfullstackeletro`
--
CREATE DATABASE IF NOT EXISTS `newfullstackeletro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newfullstackeletro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `mensagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id`, `nome`, `mensagem`) VALUES
(1, 'Fabi', 'Amei o produto'),
(2, 'Mariana', 'Não curti'),
(3, 'Marcelo', 'Produto incrível, atendeu todas as minhas necessidades.'),
(4, 'Renan', 'Poderia ser melhor embalado, mas a entrega foi rápida.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `valor_unitario` decimal(10,2) DEFAULT NULL,
  `qauntidade` int(11) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `id_produtos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `nome_cliente`, `valor_unitario`, `qauntidade`, `valor_total`, `id_produtos`) VALUES
(1, 'Carolina', '72.00', 1, '72.00', 11),
(2, 'Rafael', '2540.00', 1, '2540.00', 13),
(3, 'Caio', '1498.00', 1, '1498.00', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `preco_venda` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `imagem`, `descricao`, `preco`, `preco_venda`) VALUES
(1, 'console', '/img/xbox2.jpg', 'Microsoft XBOX Series S 512GB', '2800.00', '2599.00'),
(2, 'console', '/img/nitendo.jpeg', 'Nintendo Switch Gaming Console', '1667.58', '1498.00'),
(3, 'console', '/img/xbox1.jpg', 'Microsoft XBOX Series X 1TB', '1700.00', '1150.00'),
(4, 'acessorios', '/img/fone1.webp', 'Headset Com Suporte', '999.00', '898.00'),
(6, 'acessorios', '/img/fone2.webp', 'Headset Sem Fio Astro Gaming A50', '1299.00', '1099.00'),
(8, 'acessorios', '/img/mouse.jpg', 'Mouse Gamer Warrior Keon', '109.00', '89.00'),
(11, 'acessorios', '/img/mouse.webp', 'Mouse Gamer', '72.00', '45.00'),
(13, 'cadeira', '/img/cadeira.webp', 'Cadeira Gamer DT3 Sports', '2700.00', '2540.00'),
(15, 'cadeira', '/img/cadeira2.jpg', 'Cadeira Gamer Alpha Gamer', '2699.00', '2499.00'),
(41, 'jogos', '/img/cyberjg.webp', 'Game Cyber Punk', '270.00', '250.00'),
(42, 'jogos', '/img/fifa21jg.webp', 'Fif 21 - PS4', '269.00', '250.00'),
(43, 'jogos', '/img/lastjg.webp', 'Game The Last Of Us Part II', '279.00', '242.00'),
(44, 'jogos', '/img/gtajg.webp', 'Game Grand Thelft Auto V', '149.00', '130.00'),
(45, 'jogos', '/img/calljg.webp', 'Game Call Of Duty: black ops 4', '199.00', '180.00'),
(46, 'jogos', '/img/pesjg.webp', 'Game EFootball PES 2021 - Xbox One', '144.90', '135.00'),
(47, 'jogos', '/img/rejg.webp', 'Game Resident Evil 2 Br - XBOX ONE', '129.00', '110.00'),
(48, 'jogos', '/img/sonic.webp', 'Sonic Generations - Xbox360', '99.00', '49.00'),
(49, 'jogos', '/img/lego.webp', 'Game Lego Worlds - Xbox One', '99.00', '85.00'),
(50, 'jogos', '/img/mtk.webp', 'Game Mortal Kombat 11 Kollectors', '2999.00', '2568.00'),
(51, 'console', '/img/play5.webp', 'PlayStation 5', '5598.00', '4899.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Pedido_Fk` (`id_produtos`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `Pedido_Fk` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
