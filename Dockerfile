FROM python:3.8.5-slim-buster

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# # Install specific versions of urllib3 and botocore
# RUN pip install urllib3==2.3.0 botocore==1.36.2

# Make port 80 available to the world outside this container
EXPOSE 80

# Command to run the application
CMD ["python", "app.py"]
