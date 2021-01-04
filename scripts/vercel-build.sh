#!/bin/bash

# Cecil building...
echo "================================================================================"
if [ -z $VERCEL_URL ]; then
  php cecil.phar build -v
else
  php cecil.phar build -v --baseurl=https://$VERCEL_URL
  echo "URL: https://$VERCEL_URL"
fi

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; exit 0; fi

echo "Interrupted Cecil build"; exit 1
