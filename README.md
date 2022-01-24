# gorest-public-api
Automação REST utilizando Ruby e Httparty

<br>


## Clonar o Projeto

Dado que o git esteja instalado, executar o comando:
```
git clone https://github.com/vtrmartinez/gorest-public-api
```

<br>

### Requisitos

Instalar algum versionador do Ruby:

#### RBENV:
```
https://github.com/rbenv/rbenv
```

#### RVM:
```
https://rvm.io/
```

<br>

### Instalar Ruby

Agora, usando o versionador, instalar a versão 2.6.2 do ruby ou superior.


### Instalação

Instalar o bundle

```
$ gem install bundler
```

Dentro da pasta do projeto, executar o comando:

```
$ bundle install
```
# Execução dos testes

```
$ cucumber
```
# Tags

Nós usamos tags para rodar cenários específicos. Usamos a sintaxe " -t @nome_tag"

Example:

```
$ cucumber -t @users
```

#### Todas as Tags
```
@user            - Executa todos os cenários da funcionalidade Users
@naik            - Executa o cenário que procura usuários por Naik
@first_id        - Executa o cenário que busca os posts de usuário pelo primeiro ID da busca
@create_user     - Executa o cenário para criar usuário
@update_user     - Executa o cenário para atualizar usuário
@delete_user     - Executa o cenário para deletar usuário
```

# Gerar Relatório

```
cucumber --format html --out reports.html
```