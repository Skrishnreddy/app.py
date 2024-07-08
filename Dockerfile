# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Create a basic Python script
RUN echo "print('Hello, Docker!')" > app.py

# Install any needed packages (not using requirements.txt for simplicity)
RUN pip install Flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]

