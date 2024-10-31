FROM rust:1.82

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y git build-essential clang curl libssl-dev protobuf-compiler libprotobuf-dev mold
RUN rustup component add rustfmt clippy && rustup target add wasm32-unknown-unknown && cargo install wasm-tools

