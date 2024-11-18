CREATE DATABASE torneio;

USE torneio;

CREATE TABLE campeonatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL
);

CREATE TABLE times (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    campeonato_id INT,
    FOREIGN KEY (campeonato_id) REFERENCES campeonatos(id)
);

CREATE TABLE jogadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    time_id INT,
    FOREIGN KEY (time_id) REFERENCES times(id)
);

CREATE TABLE resultados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time1_id INT,
    time2_id INT,
    gols_time1 INT,
    gols_time2 INT,
    data_partida DATE,
    FOREIGN KEY (time1_id) REFERENCES times(id),
    FOREIGN KEY (time2_id) REFERENCES times(id)
);
