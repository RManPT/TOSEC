# TOSEC on rails README

How to enter develpment mode:

* Rails version: jadesystems/rails-5-1"

* System dependencies

	Vagrant
	download box = "jadesystems/rails-5-1"
	
	para impedir a transferencia dos ficheiros da vm para cada branch que se cria o .gitignore deve, para quem usa Win,
	ser colocaddo, por exemplo, em %userprofile% (mantido e actualizado)
	deve ser corrido o comando na pasta do repositorio local:
	git config --global core.excludefile "%userprofile%\.gitignore"
	//espero que funcione :P
	
	A quem usar o kraken como eu, pode e deve de ir a https://pt.gravatar.com/ e criar um gravatar associado ao email do git
	desta forma os branches do kraken ficam identificados com a imagem de cada um ao inves de simples icons que podem ser 
	repetidos
	
	Tanto podem fazer um fork para cada como criar branches, não se esqueçam que isto ainda é para "brincar"
	Vamos testar e aprender as manhozices para depois correr tudo bem no sprint 1
	
	
* Configuration

	Clone project
	Go to folder
	Use command prompt to "Vagrant up"
	run "Vagrant ssh"
	run "rails s"
	Use browser on "localhost:3000"
	
* Instruções projecto

	Inserir os scripts JS  globais em "app/assets/javascripts/common_scripts.js" 
	Se os scripts forem específicos de um controlador criar, se não existir, um ficheiro com o nome do controller .js  ex: "systems.js" 
	(pus a app a ir buscar automaticamente, se os encontrar, os assets que necessita usando o nome do controller)

	Cada script deve ser identificado com um cabeçalho START, seguido de HOWTO com exemplo ou instruções de utilização e um rodapé de END
	(seguir o modelo dos que já lá estão)

	Vamos manter as views limpas de JS e reutilizar código.
	
---------------------------------------------------------	
	
	
* Database creation

	"rake db:migrate"		//popular alterações à schema


* Database initialization

	"rake db:seed"		//injectar valores na db

	se se quiser limpar a bd e automaticamente adicionar seeds:
	"rake db:setup"

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
