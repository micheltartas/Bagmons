# BagDex
Documentação sobre o projeto BagDex. O projeto utiliza:
* Ruby
* Rails
* Máquina virtual Vagrant

## Diretório

### 1) Abrir o diretório "C:\Projetos\BagDex"
### 2) Botão direito do Mouse → GitBash Here
	* importante executar o GitBash como Administrador

## Vagrant
### 3) No GitBash:
	* vagrant up
	* vagrant ssh

(_Aqui o Bash vai "levantar" e conectar na máquina virtual_)	

## Vagrant - Diretório Correto

### 4) Utilizar no GitBash:
	* cd ..
	* cd ..
	* ls 
	* cd Vagrant
	
(_Aqui você estará na pasta do Vagrant dentro da máquina virtual, assim o GitBash vai estar conectado na máquina virtual permitindo os comandos abaixo_)

## Vagrant - Conectado Na Máquina Virtual

### 5) Utilizar os comandos dentro do git bash:

	- Criar Projeto
		* → rails _5.2_ new NOME_DO_PROJETO
	
### 6) Em seguida entrar dentro da pasta do projeto
	* cd NOME_DO_PROJETO

(_Aqui você estará dentro da pasta do projeto_)

## Manipulando o Projeto

### 7) Exemplo de criação de uma tabela:
	* rails g scaffold City description:string code:integer image

### 8) Entrar em uma interface de banco de dados
	* rails db
		ou 
	* rails dbconsole

		* .tables
		* .quit
	
### 9) Listas as Tasks
	* rails -T
	* rails -T db
	
### 10) Rodar a migration (Fazer com que o banco de dados seja criado)
	* rails db:migrate
	
### 11) Ativar o Rails
	* rails s -b 0.0.0.0
	* rails s -b 0.0.0.0 -e production
	
### 12) Verificar as possíveis "gerações" que o rails pode fazer
	* rails generate
	* rails generate controller pagina_inicial
	* rails destroy controller pagina_inicial
	* rails d controller pagina_inicial
	* rails g controller welcome index
	
### 13)  Migrations
	* rails g scaffold State acronym description
	* rails db:migrate
	* rails db:seed
 
### 14) Tasks
	* rails g task dev db_setup

### 15) Migrations
	* rails g migration AddStateToCities state:references
	* rails db:migrate

### Troubleshooting - Possíveis problemas que podem ocorrer e soluções:
	* Mudar para "todos" permissão total de alteração de pastas que não estejam sendo mostradas ou reconhecidas;
	* Executar o GitBash como ADM;
	* Re-Executar a Máquina Virtual com "rails reload";

### GitBash

#### Pré-Configurar Git
	1) git --version
	2) git config --global user.email “email@email.com”
	3) git config --global user.name “nome”

#### Commit
	1) git init
	2) git status
	3) git add .
	4) git commit -m "texto"
	5) git push
  
#### Rodar o Projeto
	* rails db:create
	* rails db:migrate
	* rails db:seed
