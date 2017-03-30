#!/bin/bash
KITCHEN_NAME="Wei Palace"
LOCATION="Boston, MA"
PHONE_NUMBER="555-555-5555"
EMAIL="contact@contact.com"
AVAILABLE_HOURS="M-F 9AM-9PM"
DESCRIPTION="alnfan;anf;a';falkf"
ID=5


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/kitchens/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "kitchen": {
      "kitchen_name": "'"${KITCHEN_NAME}"'",
      "location": "'"${LOCATION}"'",
      "phone_number": "'"${PHONE_NUMBER}"'",
      "email": "'"${EMAIL}"'",
      "available_hours": "'"${AVAILABLE_HOURS}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'
