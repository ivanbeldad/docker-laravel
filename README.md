# Docker Laravel
Docker image ready to create and develop laravel applications.

## Create new app

Run `docker run --rm -v /your/app/directory:/app ivandelabeldad/laravel create` to create the project.

## Create the development container

Run `docker run -p 8000:8000 -it -v /your/app/directory:/app ivandelabeldad/laravel`.

## License

The Docker Laravel project is open-sourced software licensed under the [MIT license](https://github.com/ivandelabeldad/docker-laravel/blob/master/LICENSE).
