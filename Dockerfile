FROM alpine:3.2
MAINTAINER roninkenji

RUN apk add --update asterisk && rm -rf /var/cach/apk/*
RUN mkdir /etc/asterisk-sample && apk add asterisk-sample-config && mv /etc/asterisk/* /etc/asterisk-sample

COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

ENTRYPOINT /usr/local/bin/init.sh

