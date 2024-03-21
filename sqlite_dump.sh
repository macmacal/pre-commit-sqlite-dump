#!/bin/bash

echo "[SQLite Dump] Dumping the database '$1' to the text file '$2'."
sqlite3 $1 .dump > $2
