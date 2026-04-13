#!/bin/bash

if [ -f .env ]; then
    source .env
    echo "Env file sourced"
else
    echo "Env file not sourced!"
fi

cd sql/schema
echo "db url is: $DATABASE_URL"
goose turso $DATABASE_URL up
