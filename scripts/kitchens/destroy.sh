#!/bin/bash
TOKEN="BAhJIiVkN2FjMmE0NmMyMjNiZTRmOTRjYmU0ZDExNWZhMmNiOAY6BkVG--6fb8ff913777b19e6ceec4c5146bad24d1d0a4cc"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/kitchens/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
