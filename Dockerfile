# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set working directory


# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the source code into the container
COPY . .

# Expose the application's port
EXPOSE 5001

# Run the application
CMD ["python", "app.py"]