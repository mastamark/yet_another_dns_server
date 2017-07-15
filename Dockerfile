# Yet another simple bind9 image
# Built with: docker build -t mastamark/yet_another_dns_server:latest .
FROM ubuntu:14.04
MAINTAINER mastamark+github@gmail.com

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade && apt-get -y install bind9
EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-f"]
