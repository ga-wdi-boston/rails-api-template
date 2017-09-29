#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
URL_PATH="/posts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'"
    }
  }'

echo
# "user_id": "1", keeping this here just in case needed later
