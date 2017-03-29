#!/bin/bash
TOKEN="BAhJIiVhZjViNzk3ZGI0NjdmZWYwM2QwMjc2MTQ0M2MxNTQ3MQY6BkVG--7a4fa0cdcf54d9b5dfb1b553c05b3c9bacd3e9e3"
GIVEN_NAME='bobby'
FAMILY_NAME='anthony'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/profiles/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "profile": {
      "given_name": "'"${GIVEN_NAME}"'",
      "family_name": "'"${FAMILY_NAME}"'"
    }
  }'
#   "role": "'"${ROLE}"'"
