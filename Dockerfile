ARG version=master

FROM python:3.8

RUN apt-get install -y git

RUN git clone https://github.com/cytomining/pycytominer.git

WORKDIR pycytominer

RUN git checkout $version

RUN pip install -e .[collate]
