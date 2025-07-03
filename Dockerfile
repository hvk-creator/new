FROM ubuntu:24.04
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install -y neofetch nano wget tmate \
    && dpkg --print-architecture
USER root
RUN wget https://github.com/coder/code-server/releases/download/v4.101.2/code-server-4.101.2-linux-amd64.tar.gz
RUN tar -xf code-server-4.101.2-linux-amd64.tar.gz
RUN mv code-server-4.101.2-linux-amd64 code
RUN tmate -F
