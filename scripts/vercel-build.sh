#!/bin/bash

echo "================================================================================"
if [ -z $VERCEL_URL ]; then
  php cecil.phar build -v
else
  php cecil.phar build -v --baseurl=https://$VERCEL_URL
  echo "URL: https://$VERCEL_URL"
fi

# build success? can deploy?
if [ $? = 0 ]; then
  exit 0
fi
echo "Build fail."; exit 1
