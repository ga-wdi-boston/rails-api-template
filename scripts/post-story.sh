#!/bin/bash

curl --include --request POST http://localhost:3000/stories \
  --header "Content-Type: application/json" \
  --data '{
    "stories": {
      "title": "Example Title",
      "body": "An exmaple story"
    }
  }'
