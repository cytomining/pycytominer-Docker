ARG version=master

FROM python:3.8

RUN apt-get install -y git

WORKDIR workspace/software

RUN git clone https://github.com/cytomining/pycytominer.git

WORKDIR workspace/software/pycytominer

RUN git checkout $version

RUN pip install -e .[collate]
