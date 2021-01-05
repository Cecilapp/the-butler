echo "Downloading Cecil"
if [ -z $CECIL_VERSION ]; then
  curl -sSOL https://cecil.app/cecil.phar
else
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
fi
php cecil.phar --version

echo "Started Cecil build"
if [[ $CECIL_ENV != "production" ]]; then
  php cecil.phar build -vv --baseurl=$DEPLOY_PRIME_URL --drafts
else
  php cecil.phar build -v --baseurl=$URL --postprocess
fi

# build success? can deploy?
if [ $? = 0 ]; then
  exit 0
fi
echo "Build fail."; exit 1
