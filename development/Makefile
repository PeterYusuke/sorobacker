# make commands for develop this web app in linux

STATIC = sorobacus/static
SCSS = sorobacus/scss

compile-scss:
	pysassc $(SCSS)/index.scss $(STATIC)/css/styles.css -s expanded

run-server:
	python3 manage.py runserver

install:
	pip3 install -r requirements.txt

venv:
	pip3 install virtualenv
	virtualenv env 

gcloud-set:
	export GOOGLE_CLOUD_PROJECT=sorobacker

gcloud-up-image:
	gcloud builds submit --tag gcr.io/sorobacker/sorobacus

gcloud-deploy:
	gcloud run deploy sorobacus --image gcr.io/sorobacker/sorobacus

docker-compose:
	sudo docker-compose up

docker-image-list:
	sudo docker image ls

docker-image-rm-all:
	sudo docker rmi -f $(sudo docker images -a -q)

docker-container-rm-all:
	sudo docker rm -vf $(sudo docker ps -a -q)

# docker-rm-volume:
# 	sudo docker volume rm <name>

docker-compose-rm-all:
	sudo docker-compose rm --all