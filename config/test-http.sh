#!/bin/bash

URL="https://www.google.com/"

response=$(curl -s -w "%{http_code}" $URL)

http_code=$(tail -n1 <<< "$response")
content=$(sed '$ d' <<< "$response")

echo "$http_code"
echo "$content"
