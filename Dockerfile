FROM python:3.7

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN pip install -r requirements.txt
EXPOSE $PORT
CMD exec web gunicorn app:app
