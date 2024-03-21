# pre-commit-sqlite-dump

A minimalistic [pre-commit](https://github.com/pre-commit/pre-commit) hook to automate dumping sqllite database into a text file.

## Usage
In your project `.pre-commit-config.yaml` config file, add the following (editing args for `sqlite-dump` hook):

```yaml
repos:
    # [...]

    # Dump sqlite db into text
  - repo: https://github.com/macmacal/pre-commit-sqlite-dump
    rev: "0.0.2"
    hooks:
      - id: sqlite-dump
        args: ["relative/path/to/db.sqlite", "relative/path/to/text.sql"]

    # Lint & fix SQL language
  - repo: https://github.com/sqlfluff/sqlfluff
    rev: "3.0.2"
    hooks:
      - id: sqlfluff-fix

```
