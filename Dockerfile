FROM python:3.10-slim

WORKDIR /app

# Install system dependencies if any (none needed for these packages, but good practice)
# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY app.py .

# Set default env variables
ENV PORT=8082
ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_USER=root
ENV DB_PASSWORD=""
ENV DB_NAME=products_db

EXPOSE 8082

CMD ["python", "app.py"]
