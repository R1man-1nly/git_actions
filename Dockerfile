FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

ADD actions /app/

RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]
