FROM ubuntu:20.04

RUN apt-get update
RUN apt-get -y install git
RUN apt-get install -y python3.8 python3-pip 
RUN pip3 install virtualenv

RUN git clone https://github.com/aht007/Udacity-Ansible-Practice.git

COPY ./ec2-aht.pem ./Udacity-Ansible-Practice/ec2-aht.pem

WORKDIR /Udacity-Ansible-Practice

RUN python3 -m virtualenv venv
# RUN /bin/bash -c source venv/bin/activate
# RUN pip install -r requirements.txt