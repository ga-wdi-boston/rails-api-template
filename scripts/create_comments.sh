API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "user_id": "1",
      "post_id": "1",
      "title": "Title One",
      "content": "Content One"
    }
  }'

echo
