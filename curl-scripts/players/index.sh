#!/bin/bash

curl "http://localhost:4741/players" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

echo
