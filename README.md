# After a fresh close

## If `make` command IS NOT available

```
docker run --rm -w "$(pwd)" -v "$(pwd):$(pwd)" -u $(id -u):$(id -g) composer install
docker compose up -d
docker compose exec php php artisan migrate
docker compose exec php php artisan db:seed
docker compose run --rm yarn yarn
docker compose run --rm yarn yarn dev
````

## If `make` command IS available

```
docker run --rm -w "$(pwd)" -v "$(pwd):$(pwd)" -u $(id -u):$(id -g) composer install
make dcUp
make dcArtisan args="migrate"
make dcArtisan args="db:seed"
make dcYarn
make dcYarnDev
```

Open http://localhost/, laravel welcome template should show

Open http://localhost/users, an template listing all 10 seeded users should show
