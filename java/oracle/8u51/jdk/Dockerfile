# Oracle JDK 8 on Alpine Linux!
# See: https://github.com/gliderlabs/docker-alpine/issues/11#issuecomment-91328315
# Inspiration taken from https://github.com/frol/docker-alpine-oraclejdk8
# Leverages GLIBC packaged for Alpine by Andy Shinn (https://github.com/andyshinn/alpine-pkg-glibc)

FROM docker4j/base-glibc:latest

MAINTAINER Jacob Blain Christen <jacob@blainchristen.net>

ENV JAVA_VERSION=8 \
    JAVA_UPDATE=51 \
    JAVA_BUILD=16

ENV JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-oracle

RUN set -x \
 && mkdir -p /tmp ${JAVA_HOME} \
 && cd /tmp \
 && curl -sSLO \
    -H "Cookie: oraclelicense=accept-securebackup-cookie" \
    "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" \
 && tar --no-same-permissions -xz --strip=1 -C ${JAVA_HOME} -f /tmp/jdk-* \
 && ln -vs ${JAVA_HOME}/bin/* /usr/bin/ \
 && rm -vfr /tmp/* /var/cache/apk/*

CMD ["java", "-version"]
