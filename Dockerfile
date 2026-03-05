FROM dhi.io/python:3-alpine3.23-dev AS builder

WORKDIR /app

COPY hello.py .

# Runtime stage
FROM dhi.io/python:3-alpine3.23

WORKDIR /app

COPY --from=builder /app/hello.py .

CMD ["python", "hello.py"]
