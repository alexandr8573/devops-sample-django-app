FROM python:3.8

ENV PIP_ROOT_USER_ACTION=ignore
ENV DJANGO_DB_HOST db
ENV DJANGO_DB_NAME app
ENV DJANGO_DB_USER worker
ENV DJANGO_DB_PASS worker
ENV DJANGO_DB_PORT 5432
ENV DJANGO_DEBUG False

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
