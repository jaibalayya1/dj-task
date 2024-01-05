FROM python:3.8

WORKDIR /app

COPY requirements.txt /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt

ENTRYPOINT ["python3"]
EXPOSE 8000
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
