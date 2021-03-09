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
	export GOOGLE_CLOUD_PROJECT=<PROJECT_ID>

gcloud-up-image:
	gcloud builds submit --tag gcr.io/${GOOGLE_CLOUD_PROJECT}/sorobacus

gcloud-deploy:
	cloud run deploy sorobacus --image gcr.io/${GOOGLE_CLOUD_PROJECT}/sorobacus
