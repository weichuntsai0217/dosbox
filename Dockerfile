From ubuntu:16.04

RUN apt-get update && apt-get install -y xauth dosbox

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN mkdir -p /root/.dosbox
COPY dosbox-0.74.conf /root/.dosbox
ADD https://raw.githubusercontent.com/weichuntsai0217/xserver/master/setup-xclient.sh /
