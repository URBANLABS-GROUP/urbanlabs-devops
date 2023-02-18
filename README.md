# 🏢 URBANLABS DevOps 🛠

Автоматизация системы URBANLABS.

## Деплой

```bash
$ ssh root@urbanlabs.ru
$ cd /home/urbanlabs/urbanlabs-devops
$ ./build_docker_images.sh
$ docker compose build
$ docker compose up -d
```

## Дополнительно

### Резервное копирование базы данных PostgreSQL

Выгрузка дампа в файл:

```bash
$ docker exec -t urbanlabs-postgresql pg_dumpall -c -U urbanlabs > dump.sql
```

Загрузка дампа в базу:

```bash
$ cat dump.sql | docker exec -i urbanlabs-postgresql psql -U urbanlabs
```
