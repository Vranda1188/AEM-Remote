#!/bin/bash

URL="https://www.google.com/"

response=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' "$URL" )

echo "$response"

http_code=$(tail -n1 <<< "$response")
content=$(sed '$ d' <<< "$response")

echo "$http_code"
echo "$content"
