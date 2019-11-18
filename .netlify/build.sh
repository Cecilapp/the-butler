echo "Downloading Cecil"
if [ -n $CECIL_VERSION ]
then
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
else
  curl -sSOL https://cecil.app/cecil.phar
fi
php cecil.phar --version

echo "Started Cecil build"
if [ -z $1 ]
then
  php cecil.phar build -v --baseurl=$URL
else
  echo "URL: $1"
  php cecil.phar build -v --baseurl=$1 --drafts
fi
echo "Finished Cecil build"

exit 0
