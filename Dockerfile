FROM ubuntu:18.04

RUN apt-get update --fix-missing
RUN apt-get upgrade -y

RUN apt-get install -y xvfb

RUN apt install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install pyautogui

RUN apt update && apt install -y x11-apps

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get install -y python3-tk

RUN pip3 install python-xlib
RUN apt-get install -y scrot

RUN pip3 install --upgrade pip
RUN pip3 install opencv-python
RUN pip3 install pytesseract
RUN apt install -y tesseract-ocr

COPY run.sh /opt/run.sh
RUN ["chmod", "+x", "/opt/run.sh"]