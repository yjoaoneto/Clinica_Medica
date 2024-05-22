/*create database clinica;
use clinica;

-- Criando a tabela paciente
Create table Paciente(
id INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(15) NOT NULL UNIQUE,
celular VARCHAR(16) NOT NULL,
data_cadastro DATE NOT NULL
);

-- Criando a tabela Medico
Create table Medico(
id INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(25) NOT NULL
);


-- Criando a tabela de Agendamento
Create table Agendamento(
id INT PRIMARY KEY,
id_paciente INT NOT NULL UNIQUE,
medico VARCHAR(100) NOT NULL,
data_exame DATE NOT NULL,
hora_exame VARCHAR(5) NOT NULL,
especialidade VARCHAR(25) NOT NULL,
FOREIGN KEY (id_paciente) REFERENCES Paciente(id) ON DELETE CASCADE ON UPDATE CASCADE
);
*/



