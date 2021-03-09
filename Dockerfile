FROM python:3

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

CMD exec pysassc sorobacus/scss/index.scss sorobacus/static/css/styles.css -s expanded

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app
