FROM python:3.13-alpine

RUN apk add --no-cache bash

RUN pip install "fastapi[standard]"
# COPY requirements.txt .
# RUN pip install -r requirements.txt

WORKDIR /app
COPY app/ .

EXPOSE 8000

CMD ["fastapi", "dev", "--host", "0.0.0.0"]
