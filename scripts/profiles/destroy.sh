#!/bin/bash
TOKEN="BAhJIiVhZjViNzk3ZGI0NjdmZWYwM2QwMjc2MTQ0M2MxNTQ3MQY6BkVG--7a4fa0cdcf54d9b5dfb1b553c05b3c9bacd3e9e3"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/profiles/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
