# Teste - Brain Agriculture

O teste tem como objetivo acurar as habilidades do candidato em resolver alguns problemas relacionados à lógica de programação, regra de negócio e orientação à objetos.

O mesmo consiste em um cadastro de produtor rural com os seguintes dados:

1.  CPF ou CNPJ
2.  Nome do produtor
3.  Nome da Fazenda
4.  Cidade
5.  Estado
6.  Área total em hectares da fazenda
7.  Área agricultável em hectares
8.  Área de vegetação em hectares
9.  Culturas plantadas (Soja, Milho, Algodão, Café, Cana de Açucar)

# Requisitos de negócio

- O usuário deverá ter a possibilidade de cadastrar, editar, e excluir produtores rurais.
- O sistema deverá validar CPF e CNPJ digitados incorretamente.
- A soma de área agrícultável e vegetação, não deverá ser maior que a área total da fazenda
- Cada produtor pode plantar mais de uma cultura em sua Fazenda.
- A plataforma deverá ter um Dashboard que exiba:
  - Total de fazendas em quantidade
  - Total de fazendas em hectares (área total)
  - Gráfico de pizza por estado.
  - Gráfico de pizza por cultura.
  - Gráfico de pizza por uso de solo (Área agricultável e vegetação)

# Requisitos técnicos

- O desenvolvedor front-end deverá utilizar:

  - [ReactJS](http://reactjs.org);
  - [Redux](https://redux.js.org/) para controlar o estado da aplicação.
    - Caso entenda que faça sentido, utilize [Context API](https://reactjs.org/docs/context.html) como recurso adicional ou substituto ao Redux (Opcional)
  - Crie pelo menos um teste unitário por componente (Opcional)
  - A criação das estruturas de dados "mockados" faz parte da avaliação.

- O desenvolvedor back-end deve:
  - Salvar os dados em um banco de dados Postgres usando o NodeJS como layer de Backend, e entregar os endpoints para cadastrar, editar, e excluir produtores rurais, além do endpoint que retorne os totais para o dashboard.
  - A criação das estruturas de dados "mockados" faz parte da avaliação.

  Desejável:
  - TypeScript
  - Conceitos como SOLID, KISS, Clean Code, API Contracts, Tests, Layered Architecture

  Bonus:
  - Aplicação disponibilizada em algum cloud provider de sua preferência

- O desenvolvedor full-stack deve realizar ambos, e concluir a integração.
  > Não envie a solução como anexo, suba os fontes para seu Github (ou outro repositório) e envie o link para o avaliador.


## Ambiente de Desenvolvimento Local Linux

### Preparando ambiente (Pyenv, VirtualEnv e Pipenv) ###
Recomendando utilizar o Pyenv para instalar o Python na versão 3.9 e criar uma VirtualEnv com essa versão e dentro dela instalar o Pipenv para gerenciar as dependências do projeto.

#### Instalação e utilização do Pyenv
Segue o link com instruções: [instalar pyenv no ubuntu](https://gist.github.com/luzfcb/ef29561ff81e81e348ab7d6824e14404)

#### Criação e ativação do Virtualenv
Esteja na raiz do projeto e execute os seguintes comandos:
* ```python -m venv .venv```
* ``` source .venv/bin/activate```

#### Instalação e utilização do Pipenv
Esteja dentro da .venv e execute os seguintes comandos:
* ```pip install --upgrade pip ```
* ```pip install pipenv ```
* ```pipenv install```

#### Utilize a .env para secrets
A gestão das variáveis de ambiente será feita pelo python-decouple.

Copie o modelo de .env que existe na raiz.
* ```cp env.example .env```


## Ambiente de Desenvolvimento Docker

### Instalação e atualização do Docker ###
Para executar o projeto, é necessário que seu Docker seja compatível com o compose file 3.9. No Windows apenas baixando o Docker Desktop deve ser o suficiente, mas caso esteja usando Linux, recomendo que siga as seguintes [instruções](https://linuxhostsupport.com/blog/how-to-install-and-configure-docker-compose-on-ubuntu-20-04/)

No caso da utilização do Docker as credenciais do banco devem seguir as mesmas do docker-compose.yml
```bash
DATABASE_NAME=db_challenge
DATABASE_USER=user
DATABASE_PASSWORD=password
DATABASE_HOST=172.20.0.2 # IP do container do Postgres
```

#### Para fazer o build na primeira vez ou quando for alterado o Pipfile e Dockerfile
* ```docker-compose build```

#### Para subir o ambiente, execute o seguinte comando. E se caso queira parar o ambiente, utilize ctrl + c.
* ```docker-compose up```

#### Para derrubar o ambiente, execute o seguinte comando.
* ```docker-compose down -v```
