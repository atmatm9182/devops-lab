FROM debian:bookworm

RUN apt update && apt install -y meson build-essential gcc libcurl4-gnutls-dev pkg-config

COPY ./ /build

WORKDIR /build

RUN meson setup ./build && cd ./build && meson compile

WORKDIR /build/build

ENTRYPOINT ["./vm/kokosvm", "/build/http.kokos"]
