### commands
```
chmod 777 console.sh
sudo chown -R $USER:www-data infra/*
```

### after put laravel project
```
./console.sh composer install
./console.sh ./vendor/bin/pest 
sudo chmod 777 -R storage
```
