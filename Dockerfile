FROM python:3.11-slim
RUN apt update
RUN apt install -y git
WORKDIR /python_projects
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/dsu1na/unittesting.git

# For alpine use apk and for debian use apt-get
# FROM alpine:3.5
# RUN apk update
# RUN apk add git