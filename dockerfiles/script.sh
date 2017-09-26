#!/bin/sh

DOCKER_FILES="/dockerfiles"
cd /app

if [ "$1" = "create" ] ; then
    # Create new laravel project
    laravel new -n

    # Generate IDE helper
    composer require -n --dev barryvdh/laravel-ide-helper
    composer require doctrine/dbal
    sed -i "/'providers' => /a \        Barryvdh\\\LaravelIdeHelper\\\IdeHelperServiceProvider::class," ./config/app.php
    php artisan ide-helper:generate

    # Copy README
    cp ${DOCKER_FILES}/README.md ./README.md
    cp ${DOCKER_FILES}/Server.php ./app/Console/Commands/Server.php

    # Initialize repository
    git init
    git add .
    git -c "user.name=Ivan de la Beldad" -c "user.email=ivandelabeldad@gmail.com" commit -m "Initial commit"

    # Show Ready message
    printf "\n"
    printf "Application Ready! Enjoy coding!! : )"
    printf "\n"
    sh
elif [ "$1" = "help" ] ; then
    echo "Are you searching for help? Keep waiting friend!"
else
    sh
fi
