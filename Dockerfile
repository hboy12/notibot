FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /notibot
WORKDIR /DQ-The-File-Donor
COPY . .
CMD ["/bin/bash", "/start.sh"]
