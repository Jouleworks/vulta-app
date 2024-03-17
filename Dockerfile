FROM python:3.12-alpine3.17
RUN mkdir /app
ADD requirements.txt /app
ADD Pipfile /app
ADD Pipfile.lock /app
WORKDIR /app

RUN set -ex \
    && apk add --no-cache --virtual .build-deps postgresql-dev build-base libffi libffi-dev build-base python3-dev py-pip jpeg-dev zlib-dev npm \
    && python -m venv /env \
    && /env/bin/pip install --upgrade pip \
    && /env/bin/pip install pipenv

RUN set -ex \
    && /env/bin/pipenv install

ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH
ENV VULTA_DEBUG "false"

ADD . /app
WORKDIR /app

RUN cd client \
    && npm i

EXPOSE 8080

CMD ["sh", "entrypoint.sh"]