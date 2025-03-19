#use an official python runtime as a parent image
From python:3.11
#set the working directory in the container
WORKDIR /app
#copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
#copy the application source code
COPY . .
#expose the port the app runs on
EXPOSE 5000
#define the command to run the application
CMD ["python", "app.py"]
