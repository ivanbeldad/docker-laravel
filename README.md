# Docker Laravel

Docker image ready to create and develop laravel applications.

## Create new app

Run `docker run --rm -v /your/app/directory:/app ivandelabeldad/laravel create` to create the project.

## Development server

Run `docker run -p 8000:8000 -d -v /your/app/directory:/app ivandelabeldad/laravel serve` for a dev server. Navigate to `http://localhost:8000/`.

## License

The Docker Laravel project is open-sourced software licensed under the [MIT license](https://github.com/ivandelabeldad/docker-laravel/blob/master/LICENSE).
