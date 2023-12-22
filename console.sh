#!/bin/bash

function composer
{
    docker compose run app composer "$@"
}

function artisan
{
    docker compose exec app php artisan "$@"
}

function clear
{
    artisan cache:clear
    artisan view:clear
    artisan route:clear
}

function unit
{
    docker compose exec app /src/vendor/bin/pest tests/Unit "$@"
}

function feature
{
    docker compose exec app /src/vendor/bin/pest tests/Feature "$@"
}

function tests
{
    docker compose exec php /src/vendor/bin/pest tests "$@"
}

function bash
{
    docker compose exec app bash
}

function pest
{
    docker compose exec app /src/vendor/bin/pest "$@"
}

"$@"