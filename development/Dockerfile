FROM python:3.8.5-alpine

# copy requirements.txt in order to use as install app list
COPY requirements.txt .
# install app
RUN pip install --no-cache-dir -r requirements.txt

# copy application folder
COPY ./django_project /app

# set the working directory
WORKDIR /app

# start gunicorn 
CMD exec gunicorn --bind 0.0.0.0:$PORT --workers 1 --thread 8 --timeout 0 django_project.wsgi:application
