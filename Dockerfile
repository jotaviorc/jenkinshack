# Use an official Python runtime as the parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY hello_app.py /app
COPY templates /app/templates

# Install Flask
RUN pip install flask

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable (if needed)
ENV NAME World

# Run the application when the container launches
CMD ["python", "hello_app.py"]