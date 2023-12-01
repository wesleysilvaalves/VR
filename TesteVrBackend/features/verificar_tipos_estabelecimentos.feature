# language: pt

Funcionalidade: Consultar tipos de estabelecimentos
  Como um usuário da API
  Eu quero verificar que a resposta contém a chave "typeOfEstablishment"

  Cenário: Consulta de tipos de estabelecimentos
    Dado que eu faço uma requisição para o endpoint de tipos de estabelecimentos
    Então eu devo receber uma resposta que contém a chave "typeOfEstablishment"
    E eu imprimo um tipo de estabelecimento aleatoriamente
