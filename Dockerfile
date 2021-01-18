FROM python:3.9-alpine

COPY requirements.txt /tmp/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p /tests

ENTRYPOINT [ "robot" ]
