FROM dhi.io/python:3-alpine3.23-fips-dev AS builder

WORKDIR /app

COPY hello.py .

# Runtime stage
FROM dhi.io/python:3.14-alpine3.23-fips

WORKDIR /app

COPY --from=builder /app/hello.py .

CMD ["python", "hello.py"]
