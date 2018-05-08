FROM node:8.11.1-wheezy
MAINTAINER Fabian <fabsterpal@gmail.com>

RUN npm install github:Unity-Technologies/unity-cache-server -g

EXPOSE 8126

# ENTRYPOINT ["/opt/CacheServer/RunLinux.sh"]
ENTRYPOINT ["unity-cache-server"]
# CMD []
