echo "Downloading Cecil"
curl -sSOL https://cecil.app/cecil.phar
php cecil.phar --version

echo "Started Cecil build"
if [ -z "$1" ]; then php cecil.phar build --baseurl=$URL --quiet; else echo "URL: $1" && php cecil.phar build --baseurl=$1 --drafts --quiet; fi
echo "Finished Cecil build"

exit 0
