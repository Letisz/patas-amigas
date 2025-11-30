-- Deletar um registro de turno de voluntário (chave composta)
DELETE FROM TurnoVoluntario
WHERE idVoluntario = 2 AND idTurno = 2;

-- Deletar um animal que não está vinculado a adoção
DELETE FROM Animal
WHERE idAnimal = 3;

-- Deletar uma doação específica
DELETE FROM Doacao
WHERE idDoacao = 2;
