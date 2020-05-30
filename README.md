# pyshed
Simple Docker image for running Python projects with Poetry.

Getting python up and running can be difficult. This docker image provides recent pythons, with poetry ready to use for your project.

## Users

In the directory of your python project, run this:

    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed 

Additional arguments can be passed to poetry directly, eg:

poetry init:

    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed init

poetry install:
	
    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed install



## Maintainer

build:

    docker build -t svandragt/pyshed:0.1 .
