FROM python:3.12

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

COPY . .

RUN pip install -r requirements.txt


EXPOSE 5000

ENTRYPOINT FLASK_APP=application flask run --host=0.0.0.0

