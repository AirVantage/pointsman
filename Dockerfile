FROM haproxy:1.5
MAINTAINER smoran@sierrawireless.com

ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
