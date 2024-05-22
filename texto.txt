Alunos: João Evangelista, Gabriel figueiredo, Murilo Henrique, Luan Victor


Decidimos em consenco fazer um projeto baseado em uma clínica medica, começamos usando o Delphi para fazer a tela intuitiva que esta lincada com o banco de dados(MySQL) que na sua página inicial fornece para ao usuário uma parte de agendamento, medico e pacientes, o usuário deve preencher os respequitivos dados das telas de Agendamentos, Cadastro de médico e Cadastro de pacientes. Também fizemos diagrama físico com MySQL, diagrama de classes, logico, conceitual e físico usando BRmodelo e StarUML.

Programas usados: Delphi, StarUML, BRmodelo, MySQL,  figma e xampp

Passo a passo de instalação e configuração: primeiramente instala-se o Delphi para executar o programa. Dentro da aplicação deve se configurar o banco de dados de sua preferência no Data Modele ‘DBCadastroPacientes’. dentro do Data Modele ele deve fazer a conexão ‘Clientes’ você deve fazer a conexão do banco de dados no objeto "ConexaoBD" dentro do Data Module, passando os parâmetros de usuário, senha. local do servidor e nome do banco.
Deve criar um elemento do tipo TDFTable ("TbPaciente","TbAgendamento","TbMedico") para cada tabela existente no seu BD para fazer a conexão de tabelas individualmente, e logo após isso, criar um Data Source ("DsPaciente","DsAgendamento","DsMedico") também individualmente para cada TDFTable criado para fazer a busca de dados
Logo após tudo isto, deve marcar como true nas propriedades dos elementos de tabela e de conexão.
Após fazer todo este processo, basta escolher em quais campos da aplicação cada item da tabela será aplicado.


# - Clínica médica

r001 - Cadastrar pacientes no sistema;
r002 - Poder alterar dados já existentes dos pacientes no sistema;
r003 - Buscar pacientes no sistema pelo nome;
r004 - Cadastrar médicos no sistema;
r005 - Poder alterar dados já existentes dos médicos no sistema;
r006 - Buscar médicos disponíveis no sistema pelo nome ou especialidade;
r007 - Realizar agendamentos de exames 

------------------------------------------------------------------------------------------------------------------------------------------------------------------

# - Narrativa 1: Cadastro de pacientes no sistema e(ou) alteração de dados no sistema

Como um funcionário de uma clínica 
Quero ter facilidade e praticidade para cadastrar os dados dos pacientes da clínica e caso erre em algo
quero poder corrigir sem muita dor de cabeça
Para que o processo seja simples e prático


# - Critérios de Aceite:

O usuário deve abrir a aplicação e no canto superior esquerdo clicar no ícone de "Pacientes" no menu principal ou na interface principal do aplicativo;

Lá deve ser cadastrado individualmente os dados de cada paciente "ID","Cpf","Nome Completo","Celular" e "Data de cadastro" que é puxada automaticamente do sistema do computador;

Campos já com as máscaras pré-definidas não aceitam caracteres inválidos ou valores duplicados para ID,Cpf e Celular;

Após todos os campos serem preenchidos (nenhum poderá ser vazio) o paciente será adicionado na lista e ficará visível na lista ao lado direito da tela;


------------------------------------------------------------------------------------------------------------------------------------------------------------------

# - Narrativa 2: Cadastro de médicos no sistema e(ou) alteração de dados no sistema

Como um funcionário de uma clínica
Quero ter facilidade para cadastrar também os médicos no sistema junto com suas especialidades e poder alterar seus dados caso necessário
Para uma organização maior do sistema da clínica.


# - Critérios de Aceite:

O usuário deve abrir a aplicação e no canto superior esquerdo clicar no ícone de "Médicos" no menu principal ou na interface principal do aplicativo;

Lá deve ser cadastrado individualmente os dados de cada paciente "ID","Nome do médico" e "Especialidade";

Após todos os campos serem preenchidos (nenhum poderá ser vazio) o médico será adicionado na lista e ficará visível na lista ao lado direito da tela;


------------------------------------------------------------------------------------------------------------------------------------------------------------------

# - Narrativa 3: Busca por nome 

Como um funcionário de uma clínica
Quero ter uma praticidade em achar os nomes tanto dos pacientes tanto dos médicos cadastrados no sistema
Para que as minhas atividades sejam mais fluidas


# - Critérios de Aceite:

Tanto na tela de "Pacientes" e na de "Médicos" o usuário terá um quadro junto a uma barra de busca muito intuitiva ao lado direito da tela;

O Paciente será filtrado pelo seu nome, basta digitar seu nome completo ou parcialmente que ele será encontrado;

O Médico será filtrado tanto pelo nome tanto por sua especialidade na tela de cadastrados com fácil uso;


------------------------------------------------------------------------------------------------------------------------------------------------------------------

# - Narrativa 4: Realizar agendamentos de exames

Como um funcionário de uma clínica
Quero poder realizar os agendamentos dos pacientes, não tendo que procurar nome a nome, somente pelo ID achando os pacientes, as especialidades serão associadas automaticamente aos médicos disponíveis
podendo escolher os dias e horários disponíveis para a consulta
Para que a organização prevaleça para que não ocorra choque de horários entre os pacientes


# - Critérios de Aceite:

O usuário deve abrir a aplicação e no canto superior esquerdo clicar no ícone de "Agendamentos" no menu principal ou na interface principal do aplicativo;

Lá ele deverá preencher todos os campos que estão sinalizados com os dados do paciente que deseja realizar um exame e os dados do médico que realizará a consulta;

Ao digitar o ID do paciente, o nome dele será puxado automaticamente do banco de dados, facilitando a busca. O mesmo ocorre com a especialidade do médico;


------------------------------------------------------------------------------------------------------------------------------------------------------------------

## - Regras de negócio: 

# - 1° REGRAS DE AGENDAMENTO
- Sobre agendamento de consultas, elas poderam ser marcadas pelos atendentes com 24 horas de antecedência, no mínimo.
- Cancelamentos de consultas devem ser feitas com pelo menos 14 horas de antecedência.
- Os pacientes receberam uma confirmação de suas consultas via whatsapp informado no cadastro 24 horas antes.
- O tempo regular de cada consulta varia de 30 a 50 minutos dependendo da especialidade escolhida pelo paciente.

# - 2° REGRAS DE ATENDIMENTO
- Todos os pacientes devem apresentar um documento com foto na recepção em sua primeira consulta para confirmação de dados.


# - 3° REGRAS DE COBRANÇA E PAGAMENTO  
- O pagamento é feito somente presencialmente, via pix, cartão ou dinheiro, exceto quando o paciente possua um plano de saúde que cubra seu atendimento na clínica.

# - 4° REGRAS DE SEGURANÇA DE DADOS
- Os dados dos médicos e pacientes são totalmente confidenciais e somente certo pessoal possui acesso a eles, sendo sempre monitorados.



