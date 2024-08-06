FROM python:3.11-slim

RUN apt-get update && apt-get install -y supervisor && rm -rf /var/lib/apt/lists/*

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN pip install --no-cache-dir --upgrade pip==24.2

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

COPY supervisord-web.conf /etc/supervisor/conf.d/
COPY supervisord-celery.conf /etc/supervisor/conf.d/

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
