-- ============================================================
-- 1_esquema.sql
-- Criação do banco de dados do cinema
-- ============================================================

DROP DATABASE IF EXISTS `cinema_trabalhofinal`;

CREATE DATABASE `cinema_trabalhofinal`
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE `cinema_trabalhofinal`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- Tabela: cliente

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `cpf` int NOT NULL,
  `sexo_cliente` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nasc_cliente` date NOT NULL,
  `email_cliente` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_cliente` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email_cliente` (`email_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela: filmes

DROP TABLE IF EXISTS `filmes`;
CREATE TABLE `filmes` (
  `id_filme` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diretor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lancamento` date NOT NULL,
  `genero` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_filme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela: funcionario

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nascimento` date NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela: sala

DROP TABLE IF EXISTS `sala`;
CREATE TABLE `sala` (
  `id_sala` int NOT NULL AUTO_INCREMENT,
  `qnt_assentos` int NOT NULL,
  `tipo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela: sessao

DROP TABLE IF EXISTS `sessao`;
CREATE TABLE `sessao` (
  `id_sessao` int NOT NULL AUTO_INCREMENT,
  `id_sala` int NOT NULL,
  `id_filme` int NOT NULL,
  `idioma` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`id_sessao`),
  KEY `fk_sessao_id_sala` (`id_sala`),
  KEY `fk_sessao_id_filme` (`id_filme`),
  CONSTRAINT `fk_sessao_id_filme` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id_filme`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_sessao_id_sala` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela: ingresso

DROP TABLE IF EXISTS `ingresso`;
CREATE TABLE `ingresso` (
  `ticket` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_funcionario` int NOT NULL,
  `id_sessao` int NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `assento` int NOT NULL,
  `data_compra` datetime NOT NULL,
  PRIMARY KEY (`ticket`),
  KEY `fk_ingresso_id_cliente` (`id_cliente`),
  KEY `fk_ingresso_id_funcionario` (`id_funcionario`),
  KEY `fk_ingresso_id_sessao` (`id_sessao`),
  CONSTRAINT `fk_ingresso_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresso_id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresso_id_sessao` FOREIGN KEY (`id_sessao`) REFERENCES `sessao` (`id_sessao`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
