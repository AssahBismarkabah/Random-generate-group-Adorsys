#ussing an official python runtime as a parent image
FROM python:3.9

#setting  the working directory in the container 

WORKDIR /app

#copy the current directory content into the container at /app

COPY . /app

#install in the container any package specified in the requirement.txt

RUN pip install --no-cache-dir -r requirements.txt

#Make port 80 avalaible to the world outside the container 

EXPOSE 80

CMD [ "python", "app.py" ]
