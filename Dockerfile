# Docker file for Image Deployment
FROM ubuntu:latest
LABEL maintainer=hkc1994
RUN apt-get update -y
RUN apt-get install -y python3-pip build-essential
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["main.py"]
