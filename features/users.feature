#language: pt
#utf-8

Funcionalidade: Users

Cenário: Encontrar o usuário Naik
    Dado o endereço GET para buscar usuário
    Quando buscar o usuário Naik
    Então veremos os detalhes do usuário

@teste
Cenário: Verificar post do primeiro ID encontrado
    Dado que buscamos a lista de usuários
    Quando buscar o post do primeiro ID da lista
    Então veremos os detalhes do post do usuário