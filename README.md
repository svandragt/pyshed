# pyshed
Simple Docker image for running Python projects with Poetry.

Getting python up and running can be difficult. This docker image provides a [recent version of Python](https://hub.docker.com/_/python), with [Poetry](https://python-poetry.org/) for packaging and dependency management ready to use for your project, without any additional setup.

## Users

In the directory of your python project, run this:

    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed 

Additional arguments are passed to poetry directly.

## Examples

poetry init:

    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed init

poetry install:
	
    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed install

start django server after installation (visit [http://localhost:8000](http://localhost:8000):

    docker run -p 8000:8000 --rm -ti -v "$PWD:/var/app" svandragt/pyshed run ./manage.py runserver 0.0.0.0:8000


## Maintainer

build:

    docker build -t svandragt/pyshed:0.1 .
