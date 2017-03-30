#!/bin/bash
TOKEN="BAhJIiU5N2JkMjcyNjNmMWM3ZGFhMjA2NWRlZWYzMzE5ZTRmMQY6BkVG--b9184d980f0552f5d09a1fb80def76ae3e1acf1b"
KITCHEN_NAME="Penny Kitchen"
LOCATION="123 GA ln, Boston, MA"
PHONE_NUMBER="555-555-5555"
EMAIL="contact@contact.com"
AVAILABLE_HOURS="M-F 9AM-9PM"
DESCRIPTION="this place is great"
# PROFILE_ID=8


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
      "description": "'"${DESCRIPTION}"'"
    }
  }'
#       "profile_id": "'"${PROFILE_ID}"'"
