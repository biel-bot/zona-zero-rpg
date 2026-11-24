-- Script DML - Carga inicial de dados de teste para Zona Zero (MySQL)
USE zona_zero;

INSERT INTO jogador (nome, classe, vida_atual, vitorias) VALUES
('Charles', 'Soldado', 100, 0),
('Airton', 'Medico', 90, 0);

INSERT INTO partida (jogador_id, resultado, inimigos_derrotados) VALUES
(1, 'VITORIA', 3);
