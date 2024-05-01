# Use an official Python runtime as a parent image
FROM python:3.12.0-slim-bullseye

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
# CMD ["python", "app.py"]
CMD ["python3","-m","flask", "--app", "app/src", "run","--host=0.0.0.0"]
