# Add a new comment to trigger build.
# basic nginx dockerfile starting with Ubuntu 20.04
FROM python:3.8.13-slim
WORKDIR /app
COPY . /app
RUN apt-get -y update
RUN apt-get -y install nginx
RUN pip install -r requirements.txt
EXPOSE 50
ENV NOM ariel
CMD ["python", "app.py"]
