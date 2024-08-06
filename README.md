## AWS Django Celery Redis using ElasticCache

To run this project you need to have an AWS account and a Redis ElasticCache instance running.

### Steps to run the project:

1. Clone the repository
2. Create a virtual environment and activate it
3. Install the requirements
4. Create a `.env` file with the following command:
    ```bash
    cp .env.example .env
    ```
5. Fill the `.env` file with your AWS credentials and the Redis ElasticCache endpoint
6. Run the Django server with the following command:
    ```bash
    python manage.py runserver
    ```
7. Run the Celery worker with the following command:
    ```bash
    celery -A aws_django_celery_redis worker --loglevel=info
    ```
## OR
Run this with docker
```bash
docker run -p 8000:8000 <aws_django_celery_redis_image>
```

## Test Caching and broker
Go to `http://localhost:8000/add/` to view your task id
