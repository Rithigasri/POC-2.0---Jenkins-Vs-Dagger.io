# Use an official Python image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install required dependencies
RUN pip install --no-cache-dir fpdf pywebio

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["python", "-m", "pywebio.platform.tornado_http", "--port=8080"]
