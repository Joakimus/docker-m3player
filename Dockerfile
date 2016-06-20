FROM library/debian:wheezy
MAINTAINER Joaquim Sabria <jsabria2@xtec.cat>
VOLUME ["/home/super/Música"]
# Minimal changes to httpd
#RUN echo "nameserver 10.27.100.2" > /etc/resolv.conf && \
RUN apt-get update && \
apt-get -y upgrade && \
apt-get install -y mplayer && \
apt-get clean && apt-get autoclean && \
rm -rf /var/lib/apt/lists/*



