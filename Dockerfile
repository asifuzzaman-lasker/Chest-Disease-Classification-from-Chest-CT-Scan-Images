FROM python:3.10-slim

WORKDIR /app

ENV PYTHONPATH="/app/src"

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port (optional but good practice)
EXPOSE 8080

# Start Flask app
CMD ["python", "app.py"]
