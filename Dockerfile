FROM python:3.8-slim-buster

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install mc -y
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install dbt-postgres

WORKDIR /dbt

CMD ["dbt"]