FROM python:3.9.13

ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY Pipfile* /app/
RUN pip install pipenv
RUN pipenv install --system
COPY . /app

EXPOSE 8000
