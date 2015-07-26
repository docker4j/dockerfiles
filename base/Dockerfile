FROM alpine:3.2

MAINTAINER Jacob Blain Christen <jacob@blainchristen.net>

RUN set -x \
 && mkdir -p /tmp \
 && cd /tmp \
 && apk add --update curl tar \
 && rm -vfr /tmp/* /var/cache/apk/*

CMD ["sh"]
