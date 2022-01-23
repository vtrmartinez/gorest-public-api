Dado("o endereço GET para buscar usuário") do
    # Passo em branco apenas para documentação
end

Quando("buscar o usuário Naik") do
    @users = @page.(Users).get_user("Naik")
end

Então("veremos os detalhes do usuário") do
    expect(@users.code).to eq 200
    expect(@users["data"]).to include("Naik")
end