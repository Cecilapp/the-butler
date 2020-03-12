#!/bin/bash

if [ -z $PHP_VERSION ]
then
  PHP_VERSION='7.2'
fi
echo "Installing PHP $PHP_VERSION..."
amazon-linux-extras install php$PHP_VERSION
if [ $? != 0 ]; then exit; fi
yum install php-cli php-mbstring php-intl php-gd php-dom php-xml
php --version

yum install https://extras.getpagespeed.com/release-latest.rpm
yum install jpegoptim

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
