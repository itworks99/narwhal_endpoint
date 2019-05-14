FROM python:alpine

LABEL Name=narwhal_endpoint Version=0.0.1
EXPOSE 514
EXPOSE 6514

WORKDIR /nes
ADD . /nes

RUN python3 -m pip install -r requirements.txt
CMD ["python3", "-m", "narwhal_endpoint"]