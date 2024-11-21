FROM ubuntu:22.04

RUN apt-get update 
RUN apt-get -y install make gcc g++ git wget

RUN git clone https://github.com/RomanMitin/Stockfish.git --depth=1

WORKDIR /Stockfish/src

RUN make -j profile-build

CMD cp stockfish /stockfish_binary