#!/bin/bash

URL="https://www.google.com/"

response=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' "$URL" )

echo The response http status code is: "$response"
