#!/bin/bash

echo 'Installing PHP...'
yum install php72-cli

echo 'Installing theme(s)...'
curl -sS https://getcomposer.org/installer | php
php composer.phar install

echo 'Downloading Cecil...'
curl -SOL https://cecil.app/cecil.phar

# Cecil building...
php cecil.phar build
