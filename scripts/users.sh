#!/bin/bash

curl --include --request GET http://localhost:3000/users \
  --header "Authorization: Token token=$TOKEN"

  # curl --include --request GET http://localhost:3000/users \
  #   --header "Authorization: Token token=1ecde8254e4bbf71a40aa50c9a21000a"
