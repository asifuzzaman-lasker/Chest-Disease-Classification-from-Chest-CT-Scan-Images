FROM python:3.10-slim

WORKDIR /app

# Copy only required files for installation
COPY requirements.txt .
COPY setup.py .
COPY src/ src/

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy remaining project files
COPY . .

EXPOSE 8080

CMD ["python", "app.py"]
