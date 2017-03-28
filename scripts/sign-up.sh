#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    },
    "profile": {
      "given_name": "'"${GIVEN_NAME}"'",
      "family_name": "'"${FAMILY_NAME}"'",
      "role": "'"${ROLE}"'",
      "integer": "'"${INTEGER}"'"
    }
  }'

echo
