curl --include --request GET http://localhost:3000/sessions \
  --header "Content-Type: application/json"

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'


  curl --include --request POST http://localhost:3000/sessions \
    --header "Authorization: Token token=BAhJIiU4NWYyZTZiMDNhOTAxOGVjOGQ0NTNkNWMzZmJlODJiNwY6BkVG--9cf2fd4c0ab75730718cf95374ffe86b7ed7ed44" \
    --header "Content-Type: application/json" \
    --data '{
      "session": {
        "spot": "The Wall",
        "day": "20160101",
        "conditions": "Chest high and clear",
        "surfboard_id": "1"
      }
    }'

curl --include --request PATCH http://localhost:3000/sessions/1 \
  --header "Authorization: Token token=BAhJIiU1NDUwYzNjMGFmYTUyMDE0Yzc0ZmFlOWM1YzEwYmE4NwY6BkVG--70db4e1b5620646d0b597694423086ba9f021a2a" \
  --header "Content-Type: application/json" \
  --data '{
    "session":{
      "spot": "2"
    },
    "id": "1"
  }'

  curl --include --request DELETE http://localhost:3000/sessions/1 \
    --header "Authorization: Token token=BAhJIiU1NDUwYzNjMGFmYTUyMDE0Yzc0ZmFlOWM1YzEwYmE4NwY6BkVG--70db4e1b5620646d0b597694423086ba9f021a2a"
