# make commands for develop this web app in linux

STATIC = sorobacus/static
SCSS = sorobacus/scss

compile-scss:
	pysassc $(SCSS)/index.scss $(STATIC)/css/index.css -s compressed

run-server:
	python3 manage.py runserver

install:
	pip3 install -r requirements.txt

venv:
	pip3 install virtualenv
	virtualenv env 
