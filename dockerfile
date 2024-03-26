FROM python:3.10.4-slim-buster

WORKDIR /E:/1.SCALER/Classes/16.MLOps/4.Containerization_Docker_DockerHub/docker

COPY requirements.txt /E:/1.SCALER/Classes/16.MLOps/4.Containerization_Docker_DockerHub/docker/requirements.txt

RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "--app", "hello", "run","--host=0.0.0.0"]
