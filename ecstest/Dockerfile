# https://devcenter.heroku.com/articles/container-registry-and-runtime

FROM python:3.11.4-bookworm

ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

RUN pip install --upgrade pip
COPY . /usr/src/app/
RUN pip install -r requirements.txt

RUN python manage.py collectstatic --noinput

RUN useradd -ms /bin/bash norman
USER norman

RUN chmod +x ./ecstest/start_server.sh

CMD start_server.sh
