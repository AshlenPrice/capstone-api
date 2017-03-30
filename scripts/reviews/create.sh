TITLE="AshPlace is the bomb!"
REVIEW_BODY="THAT KITCHEN HAD IT ALL! IT WAS AMAZING!"
KITCHEN_ID=1




API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "title": "'"${TITLE}"'",
      "review_body": "'"${REVIEW_BODY}"'",
      "kitchen_id": "'"${KITCHEN_ID}"'"
    }
  }'
