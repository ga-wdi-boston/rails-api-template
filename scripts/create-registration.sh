#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/registrations"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "data": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "phone": "'"${PHONE}"'",
      "email": "'"${EMAIL}"'",
      "veg_csa": "'"${VEG}"'",
      "flower_csa": "'"${FLOWER}"'",
      "location": "'"${LOCATION}"'"
    }
  }'

echo
