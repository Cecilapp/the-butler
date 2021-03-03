# What this script do?
#  1. install Cecil if `cecil.phar` is not found (force a specific version with `CECIL_VERSION`)
#  2. install Composer if `composer.phar` is not found
#  3. install theme(s) if `composer.json` is found
#  4. run `php cecil.phar build -v`

if [ ! -f "./cecil.phar" ]; then
  echo "Downloading Cecil"
  if [ -z $CECIL_VERSION ]; then
    curl -sSOL https://cecil.app/cecil.phar
  else
    curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
  fi
fi
php cecil.phar --version

if [ -f "./composer.json" ]; then
  echo "Installing theme(s)"
  if [ ! -f "./composer.phar" ]; then
    curl -sS https://getcomposer.org/installer | php
  fi
  php composer.phar install --prefer-dist --no-dev --no-progress --no-interaction
fi

php cecil.phar build -v

# build success? can deploy?
if [ $? = 0 ]; then
  exit 0
fi
echo "Build fail."; exit 1
