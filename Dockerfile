FROM python:3.10.1-alpine3.15

WORKDIR /app

# Install dependencies
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Ensure data directory exists for PickleDB
RUN mkdir -p /data

# Add your app
ADD . /app

EXPOSE 4000

CMD ["python", "app.py"]
