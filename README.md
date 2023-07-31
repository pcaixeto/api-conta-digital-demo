<h1 align="center">
API CONTA DIGITAL DEMO
</h1>
teste
## Diagrama Entidade Relacionamento

<div style="display: flex; flex-direction: 'row'; align-items: 'center';">
   <img src="assets/diagrama-entidade-relacionamento.png" width="600px">
</div>

## Modelo Entidade Relacionamento

<div style="display: flex; flex-direction: 'row'; align-items: 'center';">
   <img src="assets/modelo-entidade-relacionamento.png" width="600px">
</div>

## Scripts DDL e DML
Os scripts podem ser encontrados na pasta [scripts-SQL](https://github.com/pcaixeto/api-conta-digital-demo/tree/main/scripts-SQL).


## API

### Arquitetura da API

<div style="display: flex; flex-direction: 'row'; align-items: 'center';">
   <img src="assets/arquitetura-api.png" width="600px">
</div>

## 💻 Tecnologias e features usadas

<ul>
  <li>Typescript</li>
  <li>NestJS</li>
  <li>TypeORM</li>
  <li>Postman</li>
  <li>PostgreSQL</li>
</ul>


## Como rodar a API
```bash
# Clone o repositorio:
$ git clone 

# Instale as dependencias
$ npm install

# Execute no Browser
$ npm run start

```
OBS: o postgres usado é privado, configure seu próprio DB em ormconfig.json e src/app.module.ts

# :rocket: Features

- Get/Create/update/delete tasks using GET, POST, PUT and DELETE Request Methods
- User authentication
- All testing is being made with Postman and Jest


## TO-DOS
   - Interface do Cliente (front)
   - User Authentication
   - HTTP erros mais explicitos
   - testes unitarios usando o Jest


**By: Pedro Caixeta**
