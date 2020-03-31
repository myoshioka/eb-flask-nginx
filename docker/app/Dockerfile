FROM python:3.6

COPY . /var/www
WORKDIR /var/www

RUN pip install Flask==1.0.2
RUN pip install uwsgi

EXPOSE 3031
CMD ["uwsgi", "--ini", "/var/www/uwsgi.ini"]
