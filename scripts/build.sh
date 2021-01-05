echo "Downloading Cecil"
if [ -z $CECIL_VERSION ]; then
  curl -sSOL https://cecil.app/cecil.phar
else
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
fi
php cecil.phar --version

if [ -f "./composer.json" ]; then
  echo "Installing theme(s)"
  composer install --prefer-dist --no-dev --no-progress --no-interaction
  if [ $? != 0 ]; then
    curl -sS https://getcomposer.org/installer | php
    php composer.phar install --prefer-dist --no-dev --no-progress --no-interaction
  fi
fi

php cecil.phar build -v

# build success? can deploy?
if [ $? = 0 ]; then
  exit 0
fi
echo "Build fail."; exit 1
