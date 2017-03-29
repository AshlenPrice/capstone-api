#!/bin/bash
TOKEN="BAhJIiVmMDkwYjk1NmQyNTAwMzkxOWMyMTI3NmVmOTdkN2QwOQY6BkVG--46902df7b15ae37ac264a019ed0d7043112c40cd"
KITCHEN_NAME="AshPlace"
LOCATION="123 GA ln, Boston, MA"
PHONE_NUMBER="555-555-5555"
EMAIL="contact@contact.com"
AVAILABLE_HOURS="M-F 9AM-9PM"
DESCRIPTION="this place is great"
PROFILE_ID=8

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/kitchens"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "kitchen": {
      "kitchen_name": "'"${KITCHEN_NAME}"'",
      "location": "'"${LOCATION}"'",
      "phone_number": "'"${PHONE_NUMBER}"'",
      "email": "'"${EMAIL}"'",
      "available_hours": "'"${AVAILABLE_HOURS}"'",
      "description": "'"${DESCRIPTION}"'",
      "profile_id": "'"${PROFILE_ID}"'"
    }
  }'
