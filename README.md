# ConstCompany
## Sistema para Gestão de Construtora


Este projeto é referente a disciplina de Engenharia de Software (Laboratório).

# Início

## Pré-requisito

Para executar o projeto é necessário ter instalado:

* [Ruby 2.5.7](https://www.ruby-lang.org/pt/documentation/installation/)
ou
* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [docker-compose](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04-pt)


## Executando

Para executar com o Docker siga as instruções abaixo após clonar o repositório.

Na diretório raiz do repositório execute o seguinte código:

```shell
$ docker-compose run web new . --force --database=postresql
```

Em seguida conceda permissões ao diretório;

```shell
$ sudo chown -R $USER:$USER .
```

Após isso execute:

```shell
$ docker-compose up --build
```

Estará em execução um container do banco de dados Postgresql e da Aplicação. Em seguida acesse o container da aplicação para executar o migrate:

```shell
$ docker exec -it container_id /bin/bash
```

```shell
# rails db:migrate
```

Após realizar o migrate é só acessar pelo browser http://localhost:3000.

## Utilizando a aplicação

Ao acessar a aplicação você deverá criar um login de acesso na opção ***sign up***. Após isso é só realizar o *login* e utilizar o gerenciador de contrutora.
