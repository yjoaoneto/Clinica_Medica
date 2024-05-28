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
paciente VARCHAR(100) NOT NULL,
data_exame DATE NOT NULL,
hora_exame VARCHAR(5) NOT NULL,
especialidade VARCHAR(25) NOT NULL,
convenio enum ('Convênio médico','Particular'),
FOREIGN KEY (id_paciente) REFERENCES Paciente(id) ON DELETE CASCADE ON UPDATE CASCADE
);

alter table paciente add endereco varchar(150), add bairro varchar(40), add cep varchar(10);

alter table medico add turno enum ('Manhã','Tarde','Noite');

alter table medico add crm int not null, add telefone_medico varchar(16) not null;

alter table agendamento add paciente VARCHAR(100) NOT NULL;

alter table agendamento drop paciente;

alter table medico modify crm varchar(5);
alter table medico add sexo enum("Masculino","Feminino");
*/
