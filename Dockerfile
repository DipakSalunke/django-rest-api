FROM python
ENV PYTHONBUFFERED 1
WORKDIR /app
RUN pip install pipenv
COPY Pipfile /app/Pipfile
COPY Pipfile.lock /app/Pipfile.lock
RUN pipenv install

COPY . /app
CMD pipenv run python manage.py runserver 0.0.0.0:8000