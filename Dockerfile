FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the project files into the container's working directory
COPY . /app/

# Install project dependencies
RUN pip install -r requirements.txt


# Specify the command to run when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]