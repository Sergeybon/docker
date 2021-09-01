
FROM ubuntu

WORKDIR /opt/wbapp

LABEL version="1.0"

MAINTAINER Sergey Bondarenko <sbondar05@gmail.com>

RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip3 install flask

COPY web.py /opt/web.py

ENTRYPOINT FLASK_APP=/opt/web.py flask run --host=0.0.0.0 --port=5000

