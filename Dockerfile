FROM python:3.10.0
COPY ./docker-entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh && useradd --create-home --shell /bin/bash app
RUN python -m pip install -U pip
USER app
ENV PATH "/home/app/.poetry/bin:/home/app/.local/bin:${PATH}"
ENV POETRY_VIRTUALENVS_IN_PROJECT "true"
RUN python -m pip install poetry --user
VOLUME ["/var/app"]
WORKDIR /var/app
RUN python --version && poetry --version
ENTRYPOINT ["/entrypoint.sh"]