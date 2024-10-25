FROM debian:bookworm

RUN apt update && apt install -y meson build-essential gcc

COPY ./kokos /build

WORKDIR /build

RUN meson setup ./build && cd ./build && meson compile

ENTRYPOINT ["/build/build/interpreter/kokosi"]
