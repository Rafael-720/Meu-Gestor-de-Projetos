-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Mar-2023 às 03:59
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `meugestorprojetos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(14, 'Serious Game Sapience', 'Projeto de jogo para conscientizar as pessoas sobre fake news', '2023-03-18 00:00:00', '2023-03-18 00:00:00'),
(15, 'Projeto 2', '', '2023-03-18 00:00:00', '2023-03-18 00:00:00'),
(16, 'Projeto 3', '', '2023-03-18 00:00:00', '2023-03-18 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `idProject` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `deadline` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tasks`
--

INSERT INTO `tasks` (`id`, `idProject`, `name`, `description`, `completed`, `notes`, `deadline`, `createdAt`, `updatedAt`) VALUES
(12, 14, 'Criar EAP', 'Estrutura analitica do projeto', 1, 'detalhar o escopo', '2021-10-20', '2023-03-18 00:00:00', '2023-03-18 00:00:00'),
(13, 14, 'Criar GDD', 'Desenvolver o Game Design Document', 1, 'detalhar as mecanicas do game', '2022-03-03', '2023-03-18 00:00:00', '2023-03-18 00:00:00'),
(14, 14, 'Prototipagem na Unity', 'esboçar as telas e arte na unity', 1, '', '2022-05-10', '2023-03-18 00:00:00', '2023-03-18 00:00:00'),
(15, 14, 'Entrega das artes', 'Completar a Arte para o game', 1, '', '2022-08-18', '2023-03-18 00:00:00', '2023-03-18 00:00:00'),
(16, 14, 'Programação do game', 'implementar mecanicas ', 0, '', '2023-03-19', '2023-03-18 00:00:00', '2023-03-18 00:00:00'),
(17, 14, 'Deploy nas lojas', 'lançar o game nas principais lojas', 0, '', '2023-10-05', '2023-03-18 00:00:00', '2023-03-18 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects` (`idProject`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_projects` FOREIGN KEY (`idProject`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
