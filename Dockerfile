FROM ubuntu:24.04

RUN apt-get update && apt-get install build-essential procps curl file git nodejs npm golang-go unzip -y

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

RUN tar -C /opt -xzf nvim-linux-x86_64.tar.gz

ENV PATH="$PATH:/opt/nvim-linux-x86_64/bin"

COPY nvim /root/.config/nvim

RUN nvim --headless "+Lazy! sync" "+TSUpdate" "+MasonToolsInstallSync" +qa
