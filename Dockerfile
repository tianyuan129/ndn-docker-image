FROM ubuntu:latest

WORKDIR /root
COPY install.sh ./
RUN bash ./install.sh