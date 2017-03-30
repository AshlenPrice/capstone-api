#!/bin/bash
TOKEN="BAhJIiU0ZTIwZWM5NWU1OTcxMTM3NDk0OGUxNWY2Yjg4NWRmYQY6BkVG--25236258d86fab74e351edcaac4a07ec8555257b"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/kitchens/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
