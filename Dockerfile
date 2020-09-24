FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install python-pip -y
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
