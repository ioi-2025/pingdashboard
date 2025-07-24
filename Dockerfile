FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends fping && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

CMD ["bash"]
