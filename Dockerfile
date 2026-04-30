FROM python:3.13-alpine

WORKDIR /app

RUN apk add --no-cache bash


COPY app/ .

CMD ["python", "-m", "main"]
