FROM python:3.8.3
COPY ./docker-entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh && useradd -ms /bin/bash app
USER app
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
ENV PATH "/home/app/.poetry/bin:${PATH}"
ENV POETRY_VIRTUALENVS_IN_PROJECT "true"
VOLUME ['/var/app']
WORKDIR /var/app
RUN python --version && poetry --version
ENTRYPOINT ["/entrypoint.sh"]
