-- Script DDL - Criação do Banco de Dados Zona Zero (MySQL)
DROP DATABASE IF EXISTS zona_zero;
CREATE DATABASE zona_zero CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE zona_zero;

CREATE TABLE jogador (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    classe VARCHAR(20) NOT NULL,
    vida_atual INT NOT NULL,
    vitorias INT DEFAULT 0
);

CREATE TABLE partida (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jogador_id INT NOT NULL,
    resultado VARCHAR(20) NOT NULL,
    inimigos_derrotados INT NOT NULL,
    data_partida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (jogador_id) REFERENCES jogador(id)
);
