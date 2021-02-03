# Aceleração DIO Ruby

Evento realizado entre os dias 01/02/2021 e 05/02/2021

## Microsserviços e Comunicação Assíncrona Com Ruby e RabbitMQ na Prática

Implemente um microsserviço assíncrono trabalhando com rabbitMQ, um dos principais serviços de mensageria utilizado no mercado.

## Microsserviço Users

### Setup do projeto

```sh
bundle install
```

```sh
rails db:setup
```

### Executando o projeto

```sh
rails server -p 3001
```

### Criando um User

METHOD: Post
http://localhost:3001/users

## Microsserviço ServiceOrders

```sh
bundle install
```

```sh
rails db:setup
```

### Executando o projeto

```sh
rails server -p 3002
```

### Criando uma ServiceOrder

METHOD: Post
http://localhost:3002/service_orders

## Referências

- [Microsoft estilo de arquitetura de microsserviços](https://docs.microsoft.com/pt-br/azure/architecture/guide/architecture-styles/microservices)
- [RedHat - O que é arquitetura de microsserviços?](https://www.redhat.com/pt-br/topics/microservices)
- [Mastering Chaos - A Netflix Guide to Microservices](https://www.youtube.com/watch?v=CZ3wIuvmHeM&ab_channel=InfoQ)
- [RabbitMQ](https://www.rabbitmq.com/)
- [CloudAMQP](https://www.cloudamqp.com/)
- [RabbitMQ Hello World](https://www.rabbitmq.com/tutorials/tutorial-one-ruby.html)
