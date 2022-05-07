# Tailwind CSS & Django Docker Playground

## What is happening here?
Please check the `docker-compose-yaml`, `Dockerfile_python` and `Dockerfile_tailwind` file if any changes are needed. Out of the box the docker-compose command will generate an Python environment to serve Django, and an Node environment to auto-generate the necessary (Tailwind) CSS.

## First use
For first time use (or when you've edited one of the Dockerfiles mentioned above and/or added packages to the `requirements.txt` or `package.json` files) run this command:
```bash
docker-compose build
```
This will take some time the first time, but will run much faster on consecutive runs

## Start up playgroud
After the initial build you can start the environment with:

```bash
docker-compose up -d
```
(`-d` can be ommited if you don't want to run the docker playground in the background)

## Check the logs
If you want to check if everything is running correctly, or see is the css is being build run:
```bash
docker-compose logs
```
(`-f` can be added to 'follow' the logs. `CTRL-C` will exit this)

## Shutting down
To stop this docker environment use:
```bash
docker-compose down
```

## Caveats
* Since Django automatically reloads on a file change it sometimes cannot recover from a fatal error. In this case the `docker-compose up -d` command needs to be rerun (no need for shutdown first. Docker will detect running instances and act accordingly)
* Please note: I've used global templates in the Django project. This is not advisable for larger projects or projects with multiple (individually maintained) apps.

## Please contribute
I've made this repo to 'scratch my itch' for a simple and fast way to get started on Tailwind. If you have any imporvements, please make an pull request explaining what (and why!) you would like to change something.

Enjoy!