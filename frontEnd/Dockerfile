FROM python:3.7

WORKDIR /frontEndWD

RUN apt update
RUN apt install python3-pip -y

COPY ./requierments.txt .

RUN pip install -r requierments.txt

COPY . .

EXPOSE 5000

ENTRYPOINT ["python", "frontEndApp.py"]