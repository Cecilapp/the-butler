#!/bin/bash

echo 'Installing PHP...'
yum install php72-cli

echo 'Downloading Cecil...'
curl -SOL https://cecil.app/cecil.phar

# Cecil building...
php cecil.phar build
