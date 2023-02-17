# 🏢 URBANLABS DevOps 🛠

Автоматизация системы URBANLABS.

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
