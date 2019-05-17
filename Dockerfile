FROM python:alpine

LABEL Name=narwhal_endpoint Version=0.0.1
EXPOSE 514/udp
EXPOSE 6514/tcp

WORKDIR /nes
ADD . /nes

ENTRYPOINT [ "/bin/ash" ]
RUN python3 -m pip install -r requirements.txt
CMD ["python3", "-m", "nes"]