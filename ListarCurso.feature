#language: pt
#enconding: UTF-8
#author: Ana Vitoria Reis Matos
# version: 1.0

Funcionalidade: Listar Cursos com Formatação Consistente
  Como Administrador do Sistema
  Quero garantir que a tela de lista de cursos mantenha um padrão
  Para assegurar que todos os cursos sejam exibidos de maneira uniforme

# Critérios de Aceitação
# Garantir Padrão de Formatação Consistente
# Garantir Tamanhos Uniformes das Caixinhas dos Cursos
# Garantir Informações Alinhadas e Formatadas Corretamente
# Garantir Exibição Completa das Informações dos Cursos

  Cenário: Verificar Formatação Consistente da Lista de Cursos
    Dado que o administrador do sistema incluiu um curso no sistema
    Quando o administrador do sistema clica em Listar cursos
    Então na tela de lista de cursos deve haver um padrão de formatação consistente
      E as caixinhas dos cursos cadastrados devem ter tamanhos uniformes
      E não deve haver quebra de formatação na exibição dos cursos
      E todos os cursos devem ser exibidos com as informações (nome, data de início, data final, número de vagas) devidamente alinhadas e formatadas
