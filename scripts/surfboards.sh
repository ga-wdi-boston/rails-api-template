
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
  --header "Authorization: Token token=BAhJIiU0Mzc0ZmQwMTVmZDRlNTFhNGI5ODgzZGNhNjNhZGM2YQY6BkVG--15523052f0f7dc9ca6404f178ea669765e7f4b02" \
  --header "Content-Type: application/json" \
  --data '{
    "surfboard": {
      "height": "60",
      "shape": "fish",
      "fin_setup": "quad"
    }
  }'


  
