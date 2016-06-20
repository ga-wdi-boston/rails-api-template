#!/bin/bash

curl --include --request POST https://immense-wildwood-80135.herokuapp.com/sign-up  \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "another@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
