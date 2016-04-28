
  #
  curl --include --request POST http://localhost:3000/surfboards \
    --header "Content-Type: application/json" \
    --data '{
      "surfboards": {
        "height": "60",
        "shape": "fish",
        "fin_setup": "quad"
      }
    }'
curl --include --request GET http://localhost:3000/surfboards/1 \
--header "Content-Type: application/json"
