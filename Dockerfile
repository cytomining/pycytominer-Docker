ARG version=master

FROM python:3.8

RUN apt-get -y update

RUN apt-get install -y git sqlite3

RUN mkdir /workspace

RUN mkdir /workspace/software

WORKDIR /workspace/software

RUN git clone https://github.com/cytomining/pycytominer.git

WORKDIR /workspace/software/pycytominer

RUN git checkout $version

RUN pip install -e .[collate]
