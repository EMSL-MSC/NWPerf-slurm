#docker nwperf-slurm config


FROM karcaw/nwperf


MAINTAINER karcaw@gmail.com

RUN apt-get update
RUN apt-get install -y munge libmunge-dev git build-essential curl

#probably a better way to do this install
RUN curl https://www.schedmd.com/downloads/archive/slurm-17.02.3.tar.bz2 | tar xjf -
RUN mv slurm-17.02.3 slurm
RUN cd /slurm;./configure --prefix=/usr
RUN cd /slurm;make -j 2 install;make clean

