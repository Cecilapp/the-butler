echo "Downloading Cecil"
if [ -z $CECIL_VERSION ]
then
  curl -sSOL https://cecil.app/cecil.phar
else
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
fi
php cecil.phar --version

if [ -f "./composer.json" ]; then
  echo "Installing theme(s)"
  composer install
fi
