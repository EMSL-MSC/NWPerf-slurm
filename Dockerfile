#docker nwperf-slurm config


FROM karcaw/nwperf


MAINTAINER karcaw@gmail.com

RUN apt-get update
RUN apt-get install -y munge libmunge-dev git build-essential curl

#probably a better way to do this install
RUN curl https://download.schedmd.com/slurm/slurm-20.02.2.tar.bz2 | tar xjf -
RUN mv slurm-20.02.2 slurm
RUN cd /slurm;./configure --prefix=/usr
RUN cd /slurm;make -j 2 install;make clean

