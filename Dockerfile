FROM ubuntu:17.04
MAINTAINER Gary Ritchie <gary@garyritchie.com>
ARG VERSION=2017.1.1f1
ARG UCPATH=https://download.unity3d.com/download_unity/5d30cf096e79/
LABEL Name=unity-cacheserver Version=${VERSION}

RUN apt update \
    && apt -qy --no-install-recommends install \
        unzip \
        cpio \
        curl \
        wget \
    && apt -qy clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* \
    && rm -rf /usr/share/man/?? /usr/share/man/??_*


RUN cd /opt \
    && wget --no-check-certificate ${UCPATH}CacheServer-${VERSION}.zip \
    && unzip CacheServer-${VERSION}.zip \
    && rm CacheServer-${VERSION}.zip

EXPOSE 8125 8126

# ENTRYPOINT ["/opt/CacheServer/RunLinux.sh"]
ENTRYPOINT ["/bin/bash", "-c", "/opt/CacheServer/RunLinux.sh \"$@\"", "--"]
# CMD []