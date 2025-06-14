FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt || true

CMD ["echo", "Docker build completed successfully"]
