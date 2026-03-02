FROM dhi.io/python:3.13-alpine3.21-dev AS builder

WORKDIR /app

COPY hello.py .

# Runtime stage
FROM dhi.io/python:3.13-alpine3.21

WORKDIR /app

COPY --from=builder /app/hello.py .

CMD ["python", "hello.py"]
