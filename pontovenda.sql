-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2021 às 21:46
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pontovenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo_pro` varchar(10) NOT NULL,
  `tipo_pro` varchar(50) NOT NULL,
  `nome_pro` varchar(50) NOT NULL,
  `valor_pro` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codigo_pro`, `tipo_pro`, `nome_pro`, `valor_pro`) VALUES
('PRO0001', 'BEBIDAS', 'FANTA UVA 350ML', '2.78'),
('PRO0002', 'CARNES', 'CONTRA FILE KG', '32.00'),
('PRO0003', 'LIMPEZA', 'VASSOURA UN', '33.25'),
('PRO0004', 'VERDURAS', 'CEBOLA KG', '2.50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo_us` varchar(10) NOT NULL,
  `nome_us` varchar(100) NOT NULL,
  `sexo_us` varchar(100) NOT NULL,
  `tipo_us` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`codigo_us`, `nome_us`, `sexo_us`, `tipo_us`, `senha`) VALUES
('USU0001', 'ADMIN', 'MASCULINO', 'ADM', '123'),
('USU0002', 'USUARIO', 'FEMININO', 'NORMAL', '123'),
('USU0003', 'JACQUELINE', 'FEMININO', 'NORMAL', '1'),
('USU0004', 'MARIA', 'FEMININO', 'NORMAL', '14'),
('USU0005', 'JOSE', 'MASCULINO', 'NORMAL', '5'),
('USU0006', 'FLAVIA', 'FEMININO', 'ADM', '1'),
('USU0007', 'GOMES', 'MASCULINO', 'ADM', '5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `numero_ven` int(11) NOT NULL,
  `total_ven` decimal(10,2) NOT NULL,
  `data_ven` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`numero_ven`, `total_ven`, `data_ven`) VALUES
(1, '160.00', '17/09/2021'),
(2, '171.25', '17/09/2021');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo_pro`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo_us`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`numero_ven`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
