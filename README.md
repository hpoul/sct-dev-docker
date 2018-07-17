# Development environment for SCT

Run the following commands:

```
git clone -b python3 git@github.com:hpoul/sct-communitytools.git
git clone -b python3 git@github.com:hpoul/sct-communitydraft.git

cp sct-communitydraft/community/settings_local.py.tmpl sct-communitydraft/community/settings_local.py

docker-compose build web
docker-compose run --rm web ./manage.py migrate
docker-compose run --rm web ./manage.py createsuperuser
docker-compose run -p 8000:8000 --rm web ./manage.py runserver 0.0.0.0:8000

```

