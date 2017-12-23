echo "Switching to PHP 5.6"
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
source ~/.phpbrew/bashrc
phpbrew switch 5.6.32

echo "Installing theme"
composer install -q --no-interaction

echo "Downloading PHPoole"
curl -sSOL https://phpoole.org/phpoole.phar

if [[ ! -z $CECIL_TITLE && ! -z $CECIL_BASELINE && ! -z $CECIL_DESCRIPTION ]]; then
  echo "Writing config file"
  cat >> phpoole.yml <<EOF
  title: $CECIL_TITLE
  baseline: $CECIL_BASELINE
  description: $CECIL_DESCRIPTION
EOF
fi

echo "Running PHPoole"
php phpoole.phar --version
if [ -z "$1" ]; then php phpoole.phar build; else echo "URL: $1" && php phpoole.phar build --baseurl=$1 --drafts; fi

exit 0
