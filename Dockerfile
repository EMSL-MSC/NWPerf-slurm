#docker nwperf-slurm config


FROM karcaw/nwperf


MAINTAINER karcaw@gmail.com

RUN apt-get update
RUN apt-get install -y munge libmunge-dev git build-essential curl

#probably a better way to do this install
RUN curl http://www.schedmd.com/download/archive/slurm-14.03.8.tar.bz2 | tar xjf -
RUN mv slurm-14.03.8 slurm
RUN cd /slurm;./configure --prefix=/usr
RUN cd /slurm;make -j 2 install;make clean

