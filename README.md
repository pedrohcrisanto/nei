# Nei Test - Implementação
## Configuração

Clone o projeto

```sh
$ git clone https://github.com/pedrohcrisanto/nei.git
```

Instale as dependências
```sh
$ cd /nei/
$ sudo docker-compose run --rm app bundle install
```

Crie o banco, migre as tabelas e popule o banco de dados
```sh
$ sudo docker-compose run --rm app bundle exec rails db:create db:migrate db:seed
```

Rode a aplicação
```sh
$ sudo docker-compose up
```

Abra o seu navegador(de preferência Chrome ou Firefox) e navegue para `localhost:3000`

Para realizar Testes
```sh
$ sudo docker-compose run --rm app bundle exec rspec
```
## Deploy

https://nei-csv.herokuapp.com/

