
  #
  curl --include --request POST http://localhost:3000/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "an@example.email",
        "password": "an example password"
      }
    }'
Token='BAhJIiU0YzdlODA0NDdkMTY5ZGUwOGU4MTRlYTA0MTFjNzA0ZgY6BkVG--4a0f4de9e0c03773ede51992e61b726942e895d6'

curl --include --request POST http://localhost:3000/surfboards \
  --header "Authorization: Token token='BAhJIiUyZDkyOGRmN2EzMzFiYWZjYTFmZDg4Zjk2MzQ2YjYwYQY6BkVG--d0e1be3354a7d3fc3456302a5e02f10275f69378'" \
  --header "Content-Type: application/json" \
  --data '{
    "surfboards": {
      "height": "60",
      "shape": "fish",
      "fin_setup": "quad"
    }
  }'
