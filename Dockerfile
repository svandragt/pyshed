FROM python:3.8.3
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
ENV PATH "/root/.poetry/bin:${PATH}"
ENV POETRY_VIRTUALENVS_IN_PROJECT "true"
VOLUME ['/var/app']
WORKDIR /var/app
COPY ./docker-entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
RUN python --version && poetry --version
ENTRYPOINT ["/entrypoint.sh"]
