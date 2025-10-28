#!/usr/bin/env -S docker build --pull . -f
FROM ubuntu:noble AS builder

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    pkg-config \
    libssl-dev \
    curl \
    gcc \
    fonts-font-awesome

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain=stable --profile=minimal

RUN . /root/.cargo/env && cargo install typst-cli

FROM ubuntu:noble AS runner
ENV DEBIAN_FRONTEND=noninteractive
ENV TYPST_FONT_PATHS=/usr/share/fonts/truetype/

# install any other fonts desired here
RUN apt-get update && apt-get install -y fonts-font-awesome ca-certificates && rm -rf /var/lib/apt/lists/*

COPY --from=builder /root/.cargo/bin/* /usr/bin/

ENTRYPOINT [ "/usr/bin/typst" ]
