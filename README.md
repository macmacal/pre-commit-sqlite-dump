# pre-commit-sqlite-dump

A minimalistic [pre-commit](https://github.com/pre-commit/pre-commit) hook to automate dumping sqllite database(s) into a text file(s).

## Usage
In your project `.pre-commit-config.yaml` config file, add the following:

```yaml
repos:
    # [...]

    # Dump sqlite dbs into text
  - repo: https://github.com/macmacal/pre-commit-sqlite-dump
    rev: "2.0.0"
    hooks:
      - id: sqlite-dump
        args: [db, sdb, sqlite, db3, s3db, sqlite3, sl3, db2, s2db, sqlite2, sl2]

    # Lint & fix SQL language
  - repo: https://github.com/sqlfluff/sqlfluff
    rev: "3.0.2"
    hooks:
      - id: sqlfluff-fix
        args: [--dialect, sqlite, --quiet]

```

> [!NOTE]
> Remember to specify sqlite database extensions used in your project in the `args` field for the `sqlite-dump` hook.

## Restoring database from dump
For checkouting or pulling you might consider setting the following command as git hook for restoring the database from the dump:
```bash
sqlite3 relative/path/to/db.sqlite < relative/path/to/text.sql
```

## Requirements
```
sudo apt install -y sqlite3
```
