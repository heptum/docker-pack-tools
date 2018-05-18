FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install python-pip python-dev build-essential -y

COPY app/ /app
WORKDIR /app

RUN cd /app ; ls -lha 
RUN pip install -r requeriments.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
