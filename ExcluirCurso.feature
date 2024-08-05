#language: pt
#enconding: UTF-8
#author: Ana Vitoria Reis Matos
# version: 1.0

Funcionalidade: Excluir Curso
  Como Administrador do Sistema
  Quero excluir um curso do sistema
  Para remover cursos desnecessários ou incorretos da lista

# Critérios de Aceitação
# Garantir que o administrador deva ser capaz de selecionar o curso e clicar em "Excluir".
# Garantir que o curso deve ser removido imediatamente da tela de lista de cursos após a confirmação. 
# Garantir que a tela de lista de cursos deve ser atualizada para não mostrar o curso excluído.
# garantir que o sistema deve exibir uma mensagem de sucesso após a exclusão.



  Cenário: Excluir Curso com Sucesso
    Dado que o administrador do sistema tem um curso cadastrado na tela de lista de cursos
    Quando o administrador do sistema seleciona o curso para exclusão
      E clica em Excluir
    Então o curso deve ser removido da tela de lista de cursos
      E a tela de lista de cursos não deve mais exibir o curso excluído


  Cenário: Falha na Exclusão de Curso
    Dado que o curso está presente na lista de cursos
      E o sistema enfrenta um problema técnico que impede a exclusão
    Quando o administrador seleciona o curso e clica em "Excluir"
    Então o sistema exibe uma mensagem de erro indicando que a exclusão não pôde ser completada
      E o curso continua visível na lista de cursos
      E a tela de lista de cursos permanece inalterada