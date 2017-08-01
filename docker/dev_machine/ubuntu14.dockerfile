FROM ubuntu:14.04
MAINTAINER Aaron Xiao <xiaoxiangquan@gmail.com>

VOLUME /home/data

RUN apt-get update
RUN apt-get -y install \
  g++ \
  git \
  python-pip \
  vim \
  wget

ADD install /home/install

WORKDIR /home/data
ENTRYPOINT ["/home/install/entrypoint.sh"]
