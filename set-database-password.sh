#!/bin/sh

docker secret rm discord-fate-bot-db-password discord-fate-bot-pgpass

password=$(openssl rand -base64 12)
echo "$password" | docker secret create discord-fate-bot-db-password -
echo "database:*:*:*:$password" | docker secret create discord-fate-bot-pgpass -

