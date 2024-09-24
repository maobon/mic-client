
FROM registry.cn-hangzhou.aliyuncs.com/maobon/python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y \
    portaudio19-dev \
    gcc \
    alsa-utils \
    libasound2-dev

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "mic.py", "127.0.0.1", "8888"]