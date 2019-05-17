FROM python:alpine

LABEL Name=narwhal_endpoint Version=0.2
EXPOSE 514/udp
EXPOSE 6514/tcp

WORKDIR /nes
ADD . /nes

RUN python3 -m pip install --no-cache-dir -r requirements.txt
CMD ["python3", "-m", "nes"]