FROM ubuntu:xenial
MAINTAINER John Garza <johnegarza@wustl.edu>

LABEL \
    description="Image supporting a helper python script"

RUN apt-get update -y

RUN apt-get install -y python

RUN apt-get install -y python-pip

RUN pip install --upgrade pip

RUN pip install cyvcf2

COPY add_annotations_to_table_helper.py /usr/bin/add_annotations_to_table_helper.py
