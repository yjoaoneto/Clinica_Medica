<h1>Documentação - Sistema de Clínica Médica</h1>

<h2>Alunos: João Evangelista, Gabriel figueiredo, Murilo Henrique, Luan Victor</h2>

<h3>Resumo do projeto: </h3>
<p>Decidimos em consenso desenvolver este projeto com a finalizade de servir a alguma clínica médica, facilitando sua administração em relação aos seus pacientes, médicos e os agendamentos e serviços prestados. Estando aberto a receber aprimoramentos futuros de maneira simples.</p>



<h3>Tecnologias utilizadas:</h3>
<ul>
  <li>Ambiente de desenvolvimento dop software: Delphi, em tecnologia Pascal</li>
  <li>Banco de dados: MySql</li>
  <li>Diagrama de classes e padrões: StarUML e brModelo</li>
  <li>Protótipagem de telas: Figma</li>
  <li>Inicializador do servidor local: Xammp</li>
</ul>



<h3>Passo a passo de implementação da aplicação e como deve ser utilizado:</h3>

<p>1° passo: instalar o Delphi e configurar o ambiente de integração com o seu próprio banco de dados para executar o programa.</p> 

<p>2° passo: dentro do ambiente do Delphi, buscamos o campo de Views no canto superior esquerdo (ou com o comando Shift + F12) para acessar nosso Data Module intiluado como (DBCadasastroPacientes) e lá teremos acesso aos elementos necessários para a configuração da conexão.</p>

<p>3° passo: Já dentro da View do Data Module temos acesso aos 4 elementos que fazem a conexão funcionar e podemos configurá-los um por um: o principal, do tipo TFDConnection (intitulado como ConexaoDB) que serve para fazer a conexão direta da aplicação com o banco. Lá configuramos os parâmetros de usuário, senha e local do servidor (seja ele local ou em nuvem).Também não esquecer de marcar a opção de Active como "True" para manter a conexão ativa.</p>

<p>4° passo: Configurar os elementos do tipo TDFTable (TbPaciente,TbAgendamento,TbMedico), um pra cada tabela do banco. Lá configuramos nos parâmetros "Connection" o nome do nosso TDFConnection (ConexaoDB) e se a conexão tiver sido feita de maneira correta, nossas tabelas irão aparecer no campo "TableName" para selecionarmos a tabela desejada.</p>

<p>5° passo: Configurar os elementos do tipo TDataSource (DsPaciente,DsAgendamento,DsMedico,DsConsulta), um para cada tabela do banco. Nele configuramos apenas o parâmetro DataSet que desejamos para indicar em qual tabela ele fará a busca de dados. </p>

<p>6° passo: Este passo é apenas caso ocorra o erro do seu computador não possuir o arquivo "lib.mysql" ou ele não estar sendo encontrado pelo banco. Para resolver isso, basta configurar o elemento de nome "TFDPhysMySQLDriverLink" e no seu parâmetro "VendorLib" indicar o caminho de pastas no computador em que o arquivo se encontra.</p>

<p>7° passo: O último passo é colocar o servidor no ar, sendo ele o servidor local por meio do XAMMP, ou um servidor em nuvem, depois disso somente exercutar o arquivo .dproj (executável do Delhpi).</p>



<h3>Requisitos Funcionais</h3>
<ul>
  <li>Cadastrar pacientes novos em nosso sistema</li>
  <li>Verificar a lista de pacientes já cadastrados</li>
  <li>Fazer novos agendamentos de exames para os pacientes cadastrados</li>
  <li>Verificar a lista de agendamentos no sistema</li>
  <li>Cadastrar médicos novos no sistema</li>
  <li>Excluir ou alterar dados do médico</li>
  <li>Buscar dados do agendamento de maneira individual, selecionando num campo de marcação</li>
  <li>Cancelar ou alterar dados do exame agendado</li>
  <li>Excluir ou alterar dados do paciente no sistema (como endereço ou telefone de contato)</li>  
</ul>



<h3>Requisitos não-funcionais</h3>
<ul>
  <li>SO compatível com a aplicação windows</li>
  <li>Disponível somente para computadores</li>
  <li>Não necessita de conexão com a rede (utilizado em máquina local)</li>
  <li>Baixo consumo de memória</li>
  <li>Tempo de resposta entre as páginas de 0.5 a 1s</li>
</ul>



<h3>Cenários de uso e Critérios de Aceite</h3>
<ul>
  <li>Cadastro de pacientes no sistema, alteração e(ou) exclução de dados no sistema</li>
  <li>Cadastro de médicos no sistema, alteração e(ou) exclução de dados no sistema</li>
  <li>Tela de busca de dados no sistema por nome de pacientes e médicos</li>
  <li>Realização de agendamentos de exames com a possibilidade de realizar cancelamentos e(ou) alterações de datas ou horários</li>
  <li>Tela de busca individual de dados por escolha de campo de agendamentos já cadastrados para melhor controle, administração e organização da agenda da clínica</li>
</ul>

<h4>1° - Cadastro de pacientes no sistema, alteração e(ou) exclução de dados no sistema</h4>
<p>NARRATIVA: Como um funcionário de uma clínica quero ter facilidade e praticidade para cadastrar os dados dos pacientes da clínica e caso erre em algo desejo poder corrigir sem muita dor de cabeça para que o processo seja simples e prático.</p>
<p>CRITÉRIOS DE ACEITE:</p>
<ul>
  <li>O usuário deve abrir a aplicação e no canto superior esquerdo clicar no ícone de "Pacientes" no menu principal ou na interface principal do aplicativo;</li>
  <li>Lá deve ser cadastrado individualmente os dados de cada paciente "ID","Cpf","Nome Completo","Celular", "Endereço","Bairro","Cep" e "Data de cadastro" que é puxada automaticamente do sistema do computador;</li>
  <li>Campos já com as máscaras pré-definidas não aceitam caracteres inválidos ou valores duplicados para ID,Cpf,Celular e Cep;</li>
  <li>Após todos os campos serem preenchidos (nenhum poderá ser vazio) o paciente será adicionado na lista de cadastrados (dentro do banco de dados) e ficará visível na lista ao lado direito da tela;</li>
</ul>



<h4>2° - Cadastro de médicos no sistema, alteração e(ou) exclução de dados no sistema</h4>
<p>NARRATIVA: Como um funcionário de uma clínica quero ter facilidade para cadastrar também os médicos no sistema junto com suas especialidades e poder alterar seus dados caso necessário para uma organização maior do sistema da clínica.</p>
<p>CRITÉRIOS DE ACEITE:</p>
<ul>
  <li>O usuário deve abrir a aplicação e no canto superior esquerdo clicar no ícone de "Médicos" no menu principal ou na interface principal do aplicativo;</li>
  <li>Lá deve ser cadastrado individualmente os dados de cada paciente "ID do médico","CRM","Nome do médico","Sexo","Especialidade","Turno" e "Telefone de Contato";</li>
  <li>Campos já com as máscaras pré-definidas não aceitam caracteres inválidos ou valores duplicados para ID do médico,CRM e Telefone de Contato;</li>
  <li>Após todos os campos serem preenchidos (nenhum poderá ser vazio) o médico será adicionado na lista de cadastrados (dentro do banco de dados) e também ficará visível na lista ao lado direito da tela;</li>
</ul>


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

<h3>Regras de negócio:</h3>

<h4>1° - Regras de agendamento</h4>
<p>- Sobre agendamento de consultas, elas poderam ser marcadas pelos atendentes com 24 horas de antecedência, no mínimo.</p>
<p>- Cancelamentos de consultas devem ser feitas com pelo menos 14 horas de antecedência.</p>
<p>- Os pacientes receberam uma confirmação de suas consultas via whatsapp informado no cadastro 24 horas antes.</p>
<p>- O tempo regular de cada consulta varia de 30 a 50 minutos dependendo da especialidade escolhida pelo paciente.</p>

<h4>2° - Regras de atendimento</h4>
<p>- Todos os pacientes devem apresentar um documento com foto na recepção em sua primeira consulta para confirmação de dados.</p>
<p>- O paciente tem até 10 minutos de tolerância de atraso.</p>


<h4>3° - Regras de cobrança e pagamento</h4> 
<p>- O pagamento é feito somente presencialmente, via pix, cartão ou dinheiro, exceto quando o paciente possua um plano de saúde que cubra seu atendimento na clínica.</p>
<p>- O paciente também tem a opção de convêncio médico para o atendimento na clínica.</p>

<h4>4° - Regra de segurança de dados</h4>
<p>- Os dados dos médicos e pacientes são totalmente confidenciais e somente certo pessoal possui acesso a eles, sendo sempre monitorados.</p>




