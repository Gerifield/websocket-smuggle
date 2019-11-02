FROM python:2.7-alpine

RUN apk update && apk add gcc musl-dev

COPY app/ /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python main.py"]

EXPOSE 5000