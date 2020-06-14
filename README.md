# pyshed
Simple Docker image for running zero configuration Python projects with Poetry dependency management.

Getting python up and running can be difficult. This docker image provides a [recent version of Python](https://hub.docker.com/_/python), with [Poetry](https://python-poetry.org/) for packaging and dependency management ready to use for your project, without any additional setup.

## Users

In the directory of your python project, run this:

    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed 

Additional arguments are passed to poetry directly.

## Examples

poetry init:

    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed init
    
![init](https://user-images.githubusercontent.com/594871/83328150-cf8b2780-a278-11ea-9045-a70cf77d54ba.png)

poetry install:
	
    docker run --rm -ti -v "$PWD:/var/app" svandragt/pyshed install

![install](https://user-images.githubusercontent.com/594871/83328154-d3b74500-a278-11ea-8bda-4aa07362248a.png)

start django server (visit [http://localhost:8000](http://localhost:8000)):

    docker run -p 8000:8000 --rm -ti -v "$PWD:/var/app" svandragt/pyshed run ./manage.py runserver 0.0.0.0:8000

![runserver](https://user-images.githubusercontent.com/594871/83328155-d5810880-a278-11ea-8947-f277f9e21afd.png)

