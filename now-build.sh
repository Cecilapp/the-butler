#!/bin/bash

echo 'Installing PHP...'
if [ -z $PHP_VERSION ]
then
  PHP_V='72'
else
  PHP_V=${PHP_VERSION}
fi
amazon-linux-extras enable php$PHP_V -q
if [ $? != 0 ]; then exit; fi
yum clean metadata
yum install php-cli php-dom php-simplexml
php --version

echo 'Installing theme(s)...'
curl -sS https://getcomposer.org/installer | php
php composer.phar install --prefer-dist --no-dev --no-progress --no-interaction

echo 'Downloading Cecil...'
if [ -z $CECIL_VERSION ]
then
  curl -sSOL https://cecil.app/cecil.phar
else
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
fi
php cecil.phar --version

# Cecil building...
php cecil.phar build -v
