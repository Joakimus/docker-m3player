FROM library/debian:wheezy
MAINTAINER Joaquim Sabria <jsabria2@xtec.cat>
# Minimal changes to httpd
#RUN echo "nameserver 10.27.100.2" > /etc/resolv.conf && \
apt-get update && \
apt-get -y upgrade && \
apt-get install -y mplayer && \
apt-get clean && apt-get autoclean && \
rm -rf /var/lib/apt/lists/*



