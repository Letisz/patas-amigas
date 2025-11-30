-- Tabela: Animal
INSERT INTO Animal (idAnimal, nome, especie, raca, idade, estadoSaude, dataResgate)
VALUES
(1, 'Luna', 'Cachorro', 'Vira-lata', 3, 'Estável', '2025-01-10'),
(2, 'Mingau', 'Gato', 'Siamês', 2, 'Em tratamento', '2025-02-03'),
(3, 'Thor', 'Cachorro', 'Pitbull', 4, 'Estável', '2025-02-20');

-- Tabela: Adotante
INSERT INTO Adotante (idAdotante, nome, telefone, endereco)
VALUES
(1, 'Maria Silva', '11999990000', 'Rua das Flores, 123'),
(2, 'João Moura', '11988887777', 'Av. Central, 900');

-- Tabela: Voluntario
INSERT INTO Voluntario (idVoluntario, nome, funcao, telefone)
VALUES
(1, 'Ana Pereira', 'Cuidadora', '11977776666'),
(2, 'Carlos Ramos', 'Atendimento', '11966665555');

-- Tabela: Turno
INSERT INTO Turno (idTurno, diaSemana, horario)
VALUES
(1, 'Segunda-feira', '08:00 - 12:00'),
(2, 'Sábado', '14:00 - 18:00');

-- Tabela: TurnoVoluntario (Chave composta)
INSERT INTO TurnoVoluntario (idVoluntario, idTurno)
VALUES
(1, 1),
(1, 2),
(2, 2);

-- Tabela: Adocao
INSERT INTO Adocao (idAdocao, idAnimal, idAdotante, dataAdocao, status)
VALUES
(1, 1, 1, '2025-03-01', 'Concluída'),
(2, 2, 2, '2025-03-10', 'Em análise');

-- Tabela: Doacao
INSERT INTO Doacao (idDoacao, idVoluntario, valor, dataDoacao)
VALUES
(1, 1, 150.00, '2025-02-10'),
(2, 2, 80.00, '2025-03-05');
