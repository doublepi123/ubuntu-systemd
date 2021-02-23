FROM ubuntu:20.04

LABEL description="Ubuntu Systemed"
LABEL version="1.0"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && \
    apt-get dist-upgrade -y && \
    apt-get install systemd libpam-systemd -y

WORKDIR /root

RUN apt-get autoremove -y

ENTRYPOINT ["/sbin/init"]
