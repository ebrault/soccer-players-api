#!/bin/bash

curl "http://localhost:4741/players/${ID}" \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "player": {
      "name": "'"${NAME}"'",
      "number": "'"${NUM}"'",
      "position": "'"${POS}"'",
      "team": "'"${TEAM}"'"
    }
  }'

echo
