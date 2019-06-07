# dbt  demo with docker-compose

## profile.yaml

> place  ~/.dbt/profile.yaml

```code
default:
  target: dev
  outputs:
    dev:
      type: postgres
      host: 127.0.0.1
      user: postgres
      pass: password
      port: 5432
      dbname: postgres
      schema: dalong
      threads: 3
pg:
  target: dev
  outputs:
    dev:
      type: postgres
      host: 127.0.0.1
      user: postgres
      pass: dalong
      port: 5432
      dbname: postgres
      schema: public
      threads: 3

demo:
  target: dev
  outputs:
    dev:
      type: postgres
      host: 127.0.0.1
      user: postgres
      pass: dalong
      port: 5432
      dbname: postgres
      schema: demo
      threads: 3
```

## whats include

- basic demo
- sources usage

## init db

* sql scripts

```code
CREATE TABLE apps (
    id SERIAL PRIMARY KEY,
    appname text
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username text
);
```

## how to running

> use python venv

* init venv

```code
python3 -m venv venv
```

* install dbt tools

```code
source venv/bin/activate

pip install dbt
```

* start pg database

```code
docker-compose up -d
```

* running

```code
venv/bin/dbt run
```