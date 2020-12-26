FROM alpine

RUN apk update && \
    apk add --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ sslh && \
    rm -rf /var/cache/apk/*

CMD [ "sslh", "-F", "/etc/sslh.conf", "-f" ]