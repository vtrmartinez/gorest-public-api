Dado("o endereço GET para buscar usuário") do
    # Passo em branco apenas para documentação
end

Dado('que buscamos a lista de usuários') do
    @id = @page.(Users).get_all_users
end

Dado('que temos o POST de usuário') do
    @payload = @page.(Users).format_json_user
end

Quando("buscar o usuário Naik") do
    @user_naik = @page.(Users).get_user("Naik")
end

Quando('buscar o post do primeiro ID da lista') do
    @response_first_id = @page.(Users).get_first_post(@id)
end

Quando('enviamos a requisição') do
    @user_created = @page.(Users).create_user(@payload)
end

Então("veremos os detalhes do usuário") do
    @page.(Users).verify_user_details(@user_naik)
end

Então('veremos os detalhes do post do usuário') do
    @page.(Users).verify_posts_details(@response_first_id)
end

Então('veremos o usuário criado') do
    @page.(Users).verify_user_created(@user_created)
end
  