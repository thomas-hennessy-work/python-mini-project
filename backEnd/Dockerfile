FROM python:3.7

WORKDIR /backEndWD

RUN apt update
RUN apt install python3-pip -y

COPY ./requierments.txt .

RUN pip install -r requierments.txt

COPY ./backEnd .

EXPOSE 5001

ENTRYPOINT ["python", "backEndApp.py"]