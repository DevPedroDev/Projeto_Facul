-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Nov-2021 às 16:40
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca2122`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(10) UNSIGNED NOT NULL,
  `nome_aluno` varchar(100) DEFAULT NULL,
  `email_aluno` varchar(100) DEFAULT NULL,
  `fone_aluno` varchar(20) DEFAULT NULL,
  `rgm_aluno` varchar(10) DEFAULT NULL,
  `data_nasc_aluno` date DEFAULT NULL,
  `genero_aluno` varchar(10) DEFAULT NULL,
  `end_aluno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome_aluno`, `email_aluno`, `fone_aluno`, `rgm_aluno`, `data_nasc_aluno`, `genero_aluno`, `end_aluno`) VALUES
(1, 'Pedro Wallace', 'pedrowallace06@hotmail.com', '61995911883', '3945272', '2003-06-26', 'Masculino', 'SB 22'),
(3, 'Juca', 'Juca@mail.com', '61993859595', '3181652', '2003-05-25', 'Masculino', 'Asa'),
(5, 'dsadsa', 'pedrowsm3anoeje@gmail.com', '534534', '354354', '2001-01-31', 'Masculino', 'asdsa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendente`
--

CREATE TABLE `atendente` (
  `id_atendente` int(10) UNSIGNED NOT NULL,
  `biblioteca_id_biblioteca` int(10) UNSIGNED NOT NULL,
  `nome_atendente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atendente`
--

INSERT INTO `atendente` (`id_atendente`, `biblioteca_id_biblioteca`, `nome_atendente`) VALUES
(1, 0, 'Pedro Wallace s'),
(2, 0, 'Wallace bk'),
(3, 1, 'Pedro Ws'),
(4, 1, 'Wallace bk7');

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id_biblioteca` int(10) UNSIGNED NOT NULL,
  `nome_biblioteca` varchar(100) DEFAULT NULL,
  `end_biblioteca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `biblioteca`
--

INSERT INTO `biblioteca` (`id_biblioteca`, `nome_biblioteca`, `end_biblioteca`) VALUES
(1, 'Baracanal', 'Sobradinho'),
(2, 'Paçoca companhia', 'Setor de mansões'),
(3, 'Juquinha Lambisguel', 'ASA SUL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nome_categoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Sistemas Operacionais 2'),
(2, 'Algoritmos'),
(3, 'OAC'),
(4, 'Linguagem PHP'),
(5, 'Linguagem JAVA'),
(6, 'ROMANCE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(10) UNSIGNED NOT NULL,
  `categoria_id_categoria` int(10) UNSIGNED NOT NULL,
  `titulo_livro` varchar(100) DEFAULT NULL,
  `autor_livro` varchar(100) DEFAULT NULL,
  `editora_livro` varchar(45) DEFAULT NULL,
  `edicao_livro` char(3) DEFAULT NULL,
  `localidade_livro` varchar(20) DEFAULT NULL,
  `ano_livro` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `categoria_id_categoria`, `titulo_livro`, `autor_livro`, `editora_livro`, `edicao_livro`, `localidade_livro`, `ano_livro`) VALUES
(1, 2, 'Aprendendo lógica', 'Pedro Wallace', 'SobralCon', '259', 'Sobradinho', 2021),
(2, 0, 'Romance', 'Andrzej Sapkowski', 'a', 'a', 'Polonia', 1990),
(3, 4, 'BÁSICO LARAVEL', 'Pedro Wallace', 'Jacunaíma', '253', 'SOBRADINHO', 2021),
(4, 6, 'Sangue dos elfos', 'Andrzej Sapkowski', 'b', 'b', 'Polônia', 2003),
(5, 6, 'Tempo de Desprezo', 'Andrzej Sapkowski', 'Saga', '123', 'Polônia', 2005),
(6, 5, 'SPRING DO 0', 'BK7', 'MACUNAI', '57', 'SB2', 2021);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `aluno_id_aluno` int(10) UNSIGNED NOT NULL,
  `livro_id_livro` int(10) UNSIGNED NOT NULL,
  `atendente_id_atendente` int(10) UNSIGNED NOT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `aluno_id_aluno`, `livro_id_livro`, `atendente_id_atendente`, `data_emprestimo`, `data_devolucao`) VALUES
(1, 3, 1, 2, '2021-05-25', '2021-06-15'),
(2, 3, 2, 4, '2021-11-09', '2021-12-10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `atendente`
--
ALTER TABLE `atendente`
  ADD PRIMARY KEY (`id_atendente`),
  ADD KEY `atendente_FKIndex1` (`biblioteca_id_biblioteca`);

--
-- Índices para tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `livro_FKIndex1` (`categoria_id_categoria`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`aluno_id_aluno`,`livro_id_livro`),
  ADD KEY `aluno_has_livro_FKIndex1` (`aluno_id_aluno`),
  ADD KEY `aluno_has_livro_FKIndex2` (`livro_id_livro`),
  ADD KEY `reserva_FKIndex3` (`atendente_id_atendente`),
  ADD KEY `id_reserva` (`id_reserva`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `atendente`
--
ALTER TABLE `atendente`
  MODIFY `id_atendente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id_biblioteca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id_livro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
