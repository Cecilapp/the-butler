echo "Installing theme(s)"
#curl -sSOL https://getcomposer.org/composer-stable.phar
curl -s https://getcomposer.org/installer | php
php composer.phar install

echo "Downloading Cecil"
curl -sSOL https://cecil.app/cecil.phar
php cecil.phar --version

echo "Started Cecil build"
php cecil.phar build -v

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; exit 0; fi

echo "Interrupted Cecil build"; exit 1
