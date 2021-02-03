# Aceleração DIO Ruby

Evento realizado entre os dias 01/02/2021 e 05/02/2021

## Microsserviços e Comunicação Assíncrona Com Ruby e RabbitMQ na Prática

[Slide](https://drive.google.com/file/d/1SqsToLomUNzotukQRO7SqiehbwgfFYq4/view?usp=sharing)

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

POST:
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

POST:
http://localhost:3002/service_orders

## Referências

- [Microsoft estilo de arquitetura de microsserviços](https://docs.microsoft.com/pt-br/azure/architecture/guide/architecture-styles/microservices)
- [RedHat - O que é arquitetura de microsserviços?](https://www.redhat.com/pt-br/topics/microservices)
- [Mastering Chaos - A Netflix Guide to Microservices](https://www.youtube.com/watch?v=CZ3wIuvmHeM&ab_channel=InfoQ)
- [Introdução teórica aos Microservices](https://www.anchietajunior.com/posts/microservices-introduction/)
- [RabbitMQ](https://www.rabbitmq.com/)
- [CloudAMQP](https://www.cloudamqp.com/)
- [RabbitMQ Hello World](https://www.rabbitmq.com/tutorials/tutorial-one-ruby.html)
