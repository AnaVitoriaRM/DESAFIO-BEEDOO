#language: pt
#enconding: UTF-8
#author: Ana Vitoria Reis Matos
# version: 1.0

Funcionalidade: Cadastrar Curso
  Como Gerenciador do Sistema
  Quero cadastrar um curso no sistema
  Para disponibilizar aos Alunos

  # Critérios de Aceitação
  # Garantir que um curso só seja cadastrado com todos os campos obrigatórios preenchidos
  # Garantir que a data de início do curso não seja superior à data final do curso
  # Garantir que o número de vagas seja maior que 0 e igual ao limite de vagas ofertadas.

  Cenário: Cadastrar Curso com Sucesso
    Dado que o administrador do sistema preencheu todos os campos obrigatórios corretamente
      E a data de início do curso é anterior ou igual à data final do curso
      E o número de vagas é maior que 0 e igual ao limite de vagas ofertadas
    Quando o administrador do sistema clicar em Cadastrar curso
    Então o sistema exibe uma mensagem de sucesso
      E o curso será mostrado na tela Lista cursos

  Cenário: Cadastrar Curso com Campos Faltantes
    Dado que o administrador do sistema não preencheu pelo menos um campo obrigatório
    Quando o administrador do sistema clicar em Cadastrar curso
    Então o sistema exibe uma mensagem de insucesso
      E o curso não será criado

  Cenário: Cadastrar Curso com Data de Início Após Data de Término
    Dado que o administrador do sistema preencheu todos os campos obrigatórios
      E a data de início do curso é posterior à data final do curso
    Quando o administrador do sistema clicar em Cadastrar curso
    Então o sistema exibe uma mensagem de insucesso
      E o curso não será criado

  Cenário: Cadastrar Curso com Número de Vagas Inválido
    Dado que o administrador do sistema preencheu todos os campos obrigatórios
      E o número de vagas é menor ou igual a 0
      Ou o número de vagas não é igual ao limite de vagas ofertadas
    Quando o administrador do sistema clicar em Cadastrar curso
    Então o sistema exibe uma mensagem de insucesso
      E o curso não será criado
