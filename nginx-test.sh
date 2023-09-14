#!/bin/bash


WEB_SERVER_URL="13.250.13.8"


HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$WEB_SERVER_URL")


if [ "$HTTP_STATUS" -eq "200" ]; then
  echo "Nginx is running. HTTP Status Code: $HTTP_STATUS"
  exit 0
else
  echo "Nginx is not running. HTTP Status Code: $HTTP_STATUS"
  exit 1
fi