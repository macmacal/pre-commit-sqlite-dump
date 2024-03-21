# pre-commit-sqlite-dump

A minimalistic [pre-commit](https://github.com/pre-commit/pre-commit) hook to automate dumping sqllite database into a text file.

## Usage
In your project `.pre-commit-config.yaml` config file, add the following:

```yaml
repos:
    # [...]

    # Dump sqlite db into text
  - repo: https://github.com/macmacal/pre-commit-sqlite-dump
    rev: "0.0.1"
    hooks:
      - id: sqlite-dump

    # Lint & fix SQL language
  - repo: https://github.com/sqlfluff/sqlfluff
    rev: "3.0.2"
    hooks:
      - id: sqlfluff-fix

```
