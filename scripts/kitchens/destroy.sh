#!/bin/bash
TOKEN="BAhJIiU5N2JkMjcyNjNmMWM3ZGFhMjA2NWRlZWYzMzE5ZTRmMQY6BkVG--b9184d980f0552f5d09a1fb80def76ae3e1acf1b"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/kitchens/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
