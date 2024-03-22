#!/bin/bash

# Filenames passed by pre-commit are only for files added to the repository.
# Since adding the sqlite db to the repository isn't an option,
# it is neccesery to find all db files within the project directory.

FILES=""
for db_extension in "$@"; do
    DB_EXT="*.$db_extension"
    FILES="$FILES $(find . -type f -name $DB_EXT)"
done

for DB_PATH in $FILES; do
    DUMP_PATH="${DB_PATH%.*}.sql"
    echo "[SQLite Dump] Dumping the database '$DB_PATH' to the text file '$DUMP_PATH'."
    sqlite3 $DB_PATH .dump > $DUMP_PATH
done
