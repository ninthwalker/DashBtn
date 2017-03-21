FROM alpine:3.5
MAINTAINER ninthwalker

ENV UPDATED_ON 21MAR2017
VOLUME /config

#copy app and s6-overlay files
COPY root/ /

# Install permanent packages
RUN apk add --no-cache python && \

# Install temporary build dependencies
apk add --no-cache --virtual build-dependencies \
curl \
tar \
&& curl -L -s https://github.com/just-containers/s6-overlay/releases/download/v1.19.1.1/s6-overlay-amd64.tar.gz \
| tar xvzf - -C / && \

# Create default user
groupmod -g 1000 users && \
useradd -u 99 -U -d /config -s /bin/false xyz && \
groupmod -o -g 100 xyz && \
usermod -G users xyz && \

# Remove temp files
apk del --purge build-dependencies

# Start s6 init & webserver
ENTRYPOINT ["/init"]
CMD ["python", "/config/dashbtn.py"]
