FROM ubuntu:16.04

RUN apt-get update && apt-get install -y qt5-default git build-essential

RUN git clone https://github.com/etherchain-org/nheqminer.git

RUN cd nheqminer && mkdir build && cd build && qmake ../nheqminer/nheqminer.pro && make -j 16
