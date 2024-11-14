FROM debian:bookworm

RUN apt update && apt install -y build-essential gcc

COPY . /src

WORKDIR /src

RUN mkdir build && make

ENTRYPOINT ["./build/httppo", "-t", "1", "-p", "8080"]