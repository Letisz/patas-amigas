-- Atualizar estado de saúde de um animal
UPDATE Animal
SET estadoSaude = 'Recuperado'
WHERE idAnimal = 2;

-- Atualizar telefone de um adotante
UPDATE Adotante
SET telefone = '11912344321'
WHERE idAdotante = 1;

-- Atualizar status de uma adoção
UPDATE Adocao
SET status = 'Concluída'
WHERE idAdocao = 2;
