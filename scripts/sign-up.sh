#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
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
      "email": "THIRD@example.email",
      "password": "an example password part 2",
      "password_confirmation": "an example password part 2"
    }
  }'

  curl --include --request POST http://localhost:3000/sign-up \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "FOURTH@example.email",
        "password": "an example password part 4",
        "password_confirmation": "an example password part 4"
      }
    }'
