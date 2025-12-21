# FORCE amd64 (THIS IS THE CRITICAL FIX)
FROM --platform=linux/amd64 python:3.10-slim

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

EXPOSE 80

# SAFE & CORRECT FastAPI startup
CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
