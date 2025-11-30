CREATE TABLE Animal (
    idAnimal INT PRIMARY KEY,
    nome VARCHAR(100),
    especie VARCHAR(50),
    raca VARCHAR(100),
    idade INT,
    estadoSaude VARCHAR(100),
    dataResgate DATE
);

CREATE TABLE Adotante (
    idAdotante INT PRIMARY KEY,
    nome VARCHAR(120),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

CREATE TABLE Voluntario (
    idVoluntario INT PRIMARY KEY,
    nome VARCHAR(120),
    funcao VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Turno (
    idTurno INT PRIMARY KEY,
    diaSemana VARCHAR(20),
    horario VARCHAR(40)
);

CREATE TABLE TurnoVoluntario (
    idVoluntario INT,
    idTurno INT,
    PRIMARY KEY (idVoluntario, idTurno),
    FOREIGN KEY (idVoluntario) REFERENCES Voluntario(idVoluntario),
    FOREIGN KEY (idTurno) REFERENCES Turno(idTurno)
);

CREATE TABLE Adocao (
    idAdocao INT PRIMARY KEY,
    idAnimal INT,
    idAdotante INT,
    dataAdocao DATE,
    status VARCHAR(50),
    FOREIGN KEY (idAnimal) REFERENCES Animal(idAnimal),
    FOREIGN KEY (idAdotante) REFERENCES Adotante(idAdotante)
);

CREATE TABLE Doacao (
    idDoacao INT PRIMARY KEY,
    idVoluntario INT,
    valor DECIMAL(10,2),
    dataDoacao DATE,
    FOREIGN KEY (idVoluntario) REFERENCES Voluntario(idVoluntario)
);
