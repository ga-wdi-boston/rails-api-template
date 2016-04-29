curl --include --request GET http://localhost:3000/sessions \
  --header "Content-Type: application/json"


  curl --include --request POST http://localhost:3000/sessions \
    --header "Authorization: Token token=BAhJIiUzYTdiN2E2NGE2OGQxYTczOTQ0Y2I1MzEyOTUzZDAwMgY6BkVG--42fbce8b0da3463d8d42864bd6cd8af63158d6ec" \
    --header "Content-Type: application/json" \
    --data '{
      "session": {
        "spot": "The Wall",
        "day": "20160101",
        "conditions": "Chest high and clear",
        "surfboard_id": "1"
      }
    }'
