#language: pt
#utf-8

@users
Funcionalidade: Users

@naik
Cenário: Encontrar o usuário Naik
    Dado o endereço GET para buscar usuário
    Quando buscar o usuário Naik
    Então veremos os detalhes do usuário

@first_id
Cenário: Verificar post do primeiro ID encontrado
    Dado que buscamos a lista de usuários
    Quando buscar o post do primeiro ID da lista
    Então veremos os detalhes do post do usuário

@create_user
Cenário: Criar usuário
    Dado que temos o POST de usuário
    Quando enviamos a requisição para criar usuário
    Então veremos o usuário criado

@update_user
Cenário: Atualizar usuário
    Dado que temos o PUT de usuário
    Quando enviamos a requisição para atualizar usuário
    Então veremos o usuário atualizado

@delete_user
Cenário: Deletar usuário
    Dado que temos o DELETE de usuário
    Quando enviamos a requisição para deletar usuário
    Então veremos o usuário deletado