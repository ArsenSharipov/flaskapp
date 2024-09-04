FROM python:3.11.9-slim

RUN pip install --upgrade pip
RUN pip install flask uwsgi

COPY ./app.py /app/app.py
COPY ./templates/gradient.html /app/templates/gradient.html
COPY ./uwsgi.ini /app/uwsgi.ini
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /app

CMD ["sh", "-c", "uwsgi --ini uwsgi.ini & nginx -g 'daemon off;'"]