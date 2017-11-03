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
	
* Configuration

	Clone project
	Go to folder
	Use command prompt to "Vagrant up"
	run "Vagrant ssh"
	run "rails s"
	Use browser on "localhost:3000"
	
	
	
---------------------------------------------------------	
	
	
* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
