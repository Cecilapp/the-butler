#!/bin/bash

if [ -z $PHP_VERSION ]; then
  PHP_VERSION='7.2'
fi
echo "================================================================================"
echo "Installing PHP $PHP_VERSION..."
amazon-linux-extras install -y php$PHP_VERSION
yum install -y php-{cli,mbstring,dom,xml,intl,gettext,gd,imagick}
php --version

if [ "$INSTALL_OPTIM" = true ]; then
  echo "================================================================================"
  echo "Installing images optim' lib..."
  yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
  yum install -y jpegoptim
  yum install -y pngquant
  yum install -y gifsicle
  yum install -y libwebp-tools
fi

echo "================================================================================"
echo 'Downloading Cecil...'
if [ -z $CECIL_VERSION ]; then
  curl -sSOL https://cecil.app/cecil.phar
else
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
fi
php cecil.phar --version

echo "================================================================================"
echo 'Installing theme(s)...'
curl -sS https://getcomposer.org/installer | php
php composer.phar install --prefer-dist --no-dev --no-progress --no-interaction
