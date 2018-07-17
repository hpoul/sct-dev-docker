#FROM python:3.7-alpine
FROM alpine

RUN apk --no-cache add python3 py3-pillow py3-pip bash

RUN pip3 install --upgrade pip

# https://github.com/python-pillow/docker-images/blob/master/alpine/Dockerfile

#RUN apk --no-cache add build-base python-dev zlib-dev jpeg-dev 

COPY ./src /tmp/src

RUN pip3 install -r /tmp/src/requirements.txt


