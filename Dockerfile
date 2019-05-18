FROM python:alpine

LABEL Name=narwhal_endpoint Version=0.2
EXPOSE 514/udp
EXPOSE 6514/tcp

WORKDIR /nes
ADD . /nes

RUN ["chmod", "+x", "nes.sh"]
RUN ["python3", "-m", "pip", "install", "-r", "requirements.txt"]
ENTRYPOINT ["/usr/bin/env/ash", "/nes/nes.sh"]