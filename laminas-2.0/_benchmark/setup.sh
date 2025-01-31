#!/bin/sh
# create project
rm -rf _benchmark/temp
composer create-project laminas/laminas-mvc-skeleton:^2.0 ./_benchmark/temp
mv ./_benchmark/temp/{.,}* ./

# have the route & controller
yes|cp -rf _benchmark/laminas/. ./

# some enhancements
composer install --optimize-autoloader --no-dev
rm ./public/.htaccess