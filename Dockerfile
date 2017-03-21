FROM alpine:3.5
MAINTAINER ninthwalker

ENV UPDATED_ON 21MAR2017
VOLUME /app

#copy app
COPY root/

# Install permanent packages
RUN apk add --no-cache python && \

# Create default user
groupmod -g 1000 users && \
useradd -u 99 -U -d /config -s /bin/false xyz && \
groupmod -o -g 100 xyz && \
usermod -G users xyz && \

# Start dashbtn app
CMD ["python", "dashbtn.py"]
