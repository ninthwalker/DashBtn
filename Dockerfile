FROM alpine:3.5
MAINTAINER ninthwalker

ENV UPDATED_ON 21MAR2017
VOLUME /config
WORKDIR /config

#copy app
COPY root/ /

# Install permanent packages.
RUN apk add --no-cache python

# Start dashbtn app
CMD ["cp", "/app", "/config", "&&", "./dashbtn.py"]
