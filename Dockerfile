FROM python:3.11.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install flask uwsgi

COPY . .

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]