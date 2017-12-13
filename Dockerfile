FROM python:3.6.3-alpine

RUN rm -rf /var/cache && \
    mkdir -p /app

WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY yb_mock /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD python server.py
