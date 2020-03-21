# Tailwind CSS Docker Playground

## About Tailwind CSS Docker Playground

Tailwind CSS Docker Playground is a container based playground with live reload for learning Tailwind CSS. Your host machine only needs to have Docker and Docker Compose installed on it to get up and running with the Tailwind CSS Docker Playground.

## Features

- Only requires [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) to be installed on the host machine
- A lightweigh Alpine Linux based Node.js [base image](https://hub.docker.com/_/node/)
- Support for [PostCSS CLI](https://www.npmjs.com/package/postcss-cli) processing
- Support for [PostCSS Autoprefixer](https://www.npmjs.com/package/autoprefixer)
- Support for [Live Server](https://www.npmjs.com/package/live-server) for super fast live browser reloading

## Quick Start

1) Make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) installed on your machine.

2) Clone this repo to a folder of your choice.

3) Run `docker-compose up` to build the Docker image, install the projects node modules, and start the live reloading server. Once this process is complete, you should see a URL ending with port 9000. Open this in your browser. At this time, you should be seeing a raw unstyled welcome page.

4) Open a new tab or terminal window and browse to the Tailwind CSS Docker Playground project root. Run the command below to generate the `/src/public/main.css` file, which imports Tailwind CSS, processes any custom CSS in the `/src/base.css` file, add autoprefixer support, and outputs the `/src/public/main.css`.
	```
	docker run -v $(PWD)/src:/var/www -w /var/www node:12.16-alpine npm run build
	```

5) If you return to your browser, you should now see Tailwind CSS styles applied to the welcome screen.

6) Now you can open up the `/src/public/index.html` and make a chance to the default welcome screen. As soon as you save your change, your browser should automatically reload showing the latest changes. If you want to test out any of the @apply or themeing capabilities of Tailwind CSS, you will need to re-run the command from step 4 above to regenerate your `/src/public/main.css` file.

## License
The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
