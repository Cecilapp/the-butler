echo "Downloading PHPoole"
curl -sSOL https://phpoole.org/phpoole.phar
php phpoole.phar --version

if [[ ! -z $CECIL_TITLE && ! -z $CECIL_BASELINE && ! -z $CECIL_DESCRIPTION ]]; then
  echo "Writing config file"
  sed -i -E "s/(title: ).*/\1$CECIL_TITLE/" phpoole.yml
  sed -i -E "s/(baseline: ).*/\1$CECIL_BASELINE/" phpoole.yml
  sed -i -E "s/(description: ).*/\1$CECIL_DESCRIPTION/" phpoole.yml
fi

echo "Started PHPoole build"
if [ -z "$1" ]; then php phpoole.phar build --quiet; else echo "URL: $1" && php phpoole.phar build --baseurl=$1 --drafts --quiet; fi
echo "Finished PHPoole build"

exit 0
