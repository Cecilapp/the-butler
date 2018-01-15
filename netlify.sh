echo "Switching to PHP 5.6"
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
source ~/.phpbrew/bashrc
phpbrew list
phpbrew switch 5.6.33

echo "Installing theme"
composer install -q --no-interaction

echo "Downloading PHPoole"
curl -sSOL https://phpoole.org/phpoole.phar

if [[ ! -z $CECIL_TITLE && ! -z $CECIL_BASELINE && ! -z $CECIL_DESCRIPTION ]]; then
  echo "Writing config file"
  sed -i -E "s/(title: ).*/\1$CECIL_TITLE/" phpoole.yml
  sed -i -E "s/(baseline: ).*/\1$CECIL_BASELINE/" phpoole.yml
  sed -i -E "s/(description: ).*/\1$CECIL_DESCRIPTION/" phpoole.yml
fi

echo "Running PHPoole"
php phpoole.phar --version
if [ -z "$1" ]; then php phpoole.phar build; else echo "URL: $1" && php phpoole.phar build --baseurl=$1 --drafts; fi

exit 0
