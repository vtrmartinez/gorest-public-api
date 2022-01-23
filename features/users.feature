#language: pt
#utf-8

Funcionalidade: Users

Cenário: Encontrar o usuário Naik
    Dado o endereço GET para buscar usuário
    Quando buscar o usuário Naik
    Então veremos os detalhes do usuário