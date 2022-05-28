FROM python:alpine

RUN apk --update add \
    gcc \
    musl-dev \
    linux-headers \
    build-base \
    libffi-dev

COPY requirements.txt /tmp/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p /tests

ENTRYPOINT [ "robot" ]

