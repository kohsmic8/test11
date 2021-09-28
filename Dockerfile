FROM python:3.9.0

WORKDIR /home/

RUN echo 'ijnjn'

RUN git clone https://github.com/kohsmic8/test11.git

WORKDIR /home/test11/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=test11.settings.deploy && python manage.py migrate --settings=test11.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=test11.settings.deploy test11.wsgi --bind 0.0.0.0:8000"]