#!/bin/bash

echo 'Installing PHP...'
if [ -n $PHP_VERSION ]
then
  PHP_V=${PHP_VERSION//./}
else
  PHP_V='72'
fi
yum install php$PHP_V-cli

echo 'Installing theme(s)...'
curl -sS https://getcomposer.org/installer | php
php composer.phar install

echo 'Downloading Cecil...'
if [ -n $CECIL_VERSION ]
then
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
else
  curl -sSOL https://cecil.app/cecil.phar
fi
php cecil.phar --version

# Cecil building...
php cecil.phar build -v
