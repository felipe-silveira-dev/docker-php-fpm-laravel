#!/bin/bash

function composer
{
    docker compose run php composer "$@"
}

function artisan
{
    docker compose exec php php artisan "$@"
}

function clear
{
    artisan cache:clear
    artisan view:clear
    artisan route:clear
}

function unit
{
    docker compose exec php /src/vendor/bin/pest tests/Unit "$@"
}

function feature
{
    docker compose exec php /src/vendor/bin/pest tests/Feature "$@"
}

function tests
{
    docker compose exec php /src/vendor/bin/pest tests "$@"
}

function bash
{
    docker compose exec php bash
}

function pest
{
    docker compose exec php /src/vendor/bin/pest "$@"
}

"$@"