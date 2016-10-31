FROM ubuntu:16.04

RUN apt-get update && apt-get install -y cmake build-essential libboost-all-dev git

RUN git clone https://github.com/sarath-hotspot/nheqminer.git

RUN cd nheqminer/nheqminer && mkdir build && cd build && cmake .. && make -j 4

CMD /nheqminer/nheqminer/build/nheqminer -l eu1-zcash.flypool.org:3333 -u t1Zeak2Xbdnz8NLBYZoNww6kkdFBjT6nfx9
