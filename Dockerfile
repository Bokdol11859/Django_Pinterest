FROM python:3.10.0

WORKDIR /home/

RUN git clone https://github.com/Bokdol11859/django_pinterest.git

WORKDIR /home/django_pinterest

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-!(2ls9r15*$^62^xldfh^)v0#mt^ldj6+ils#&+h-tqah%#n(^" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]