#!/bin/bash
TOKEN="BAhJIiVkNmIxNjNhMGM4MjAzZTY1NWE0NWEyZjY1YmVhMDU4NQY6BkVG--2205c94a2b93c28e695f6ac4e42272c54519a317"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/kitchens/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
