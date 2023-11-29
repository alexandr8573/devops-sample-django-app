<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3></h3>

Sample Python application on Django with PostgreSQL database.

<h3>Requirements</h3>

____


- django 4.0.1
- Pillow 9.0.0
- psycopg2-binary 2.9.3
- django-prometheus 2.2.0

<h3>Deployment</h3>

____



- install Docker
- install Docker Compose
- install git

* Build:
```shell
git clone https://github.com/alexandr8573/devops-sample-django-app.git
chmod 755 -R ./devops-sample-django-app/
cd ./devops-sample-django-app/
docker-compose build
```

* start application:
```shell
docker-compose up -d && docker-compose rm -f
```


* stop application:
```shell
docker-compose down
```
