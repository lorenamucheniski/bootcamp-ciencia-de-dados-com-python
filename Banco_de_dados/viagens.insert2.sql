-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-144158-db.mariadb-144158:10056
-- Tempo de geração: 10-Set-2023 às 20:53
-- Versão do servidor: 10.5.12-MariaDB-1:10.5.12+maria~bionic
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viagens`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `destinos`
--

CREATE TABLE `destinos` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(150) NOT NULL COMMENT 'Nome do destino',
  `descricao` varchar(255) NOT NULL COMMENT 'Descrição do destino'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `destinos`
--

INSERT INTO `destinos` (`id`, `nome`, `descricao`) VALUES
(2, 'Cachoeira do vale verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em histórias e arquitetura'),
(4, 'Praia das tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(1, 'Praia do Rosa', 'Linda praia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL COMMENT 'Referência ao ID do usuário que fez a reserva',
  `id_destinos` int(11) DEFAULT NULL COMMENT 'Referência ao ID do destino da reserva',
  `data` date DEFAULT NULL COMMENT 'Data da reserva',
  `status` varchar(255) DEFAULT 'pendente' COMMENT 'Status da reserva (confirmado, pendente, cancelada, etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id`, `id_usuario`, `id_destinos`, `data`, `status`) VALUES
(1, 1, 1, '2023-11-11', 'pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(150) NOT NULL COMMENT 'Nome do usuário',
  `email` varchar(100) NOT NULL COMMENT 'Email do usuário',
  `endereço` varchar(60) NOT NULL COMMENT 'Endereço do usuário',
  `data_nascimento` date NOT NULL COMMENT 'Data de nascimento do usuário'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `endereço`, `data_nascimento`) VALUES
(4, 'Ana Carolini', 'ana@example.com', 'Rua das Ortências - Cidade Z/PR', '1996-11-06'),
(3, 'Pedro Henrique', 'pedro@example.com', 'Rua São Paulo - Cidade X/Pr', '2006-01-05'),
(2, 'Samuel Cerrutto', 'samuel@example.com', 'Rua Bariri - Cidade Y/SC', '2020-04-08'),
(1, 'Lorena Mucheniski', 'teste@teste.com', 'Rua principal - Centro/SP', '1998-03-25');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `destinos`
--
ALTER TABLE `destinos`
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
