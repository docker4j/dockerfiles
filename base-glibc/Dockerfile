FROM docker4j/base:latest

MAINTAINER Jacob Blain Christen <jacob@blainchristen.net>

RUN set -x \
 && cd /tmp \
 && curl -sSLO \
    "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk" \
 && curl -sSLO \
    "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-bin-2.21-r2.apk" \
 && apk add --update --allow-untrusted /tmp/glibc-*.apk \
 && /usr/glibc/usr/bin/ldconfig /lib /usr/glibc/usr/lib \
 && echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf \
 && rm -vfr /tmp/* /var/cache/apk/*

CMD ["sh"]
