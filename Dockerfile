FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    make \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /ontwikkelomgeving

COPY . .

RUN mkdir -p build

RUN cd build && cmake .. && make

CMD ["/ontwikkelomgeving/build/hello_world"]
