FROM tiangolo/uwsgi-nginx-flask:python3.5



ENV LISTEN_PORT 5000

COPY /app/requirements.txt /tmp/

RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt
COPY ./app /app
