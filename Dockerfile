FROM python:3.6.3-alpine

RUN rm -rf /var/cache && \
    mkdir -p /app

WORKDIR /app

COPY requirement.txt /app/requirement.txt
COPY yb-mock /app

RUN pip install --no-cache-dir -r requirement.txt

EXPOSE 5000

CMD python server.py
