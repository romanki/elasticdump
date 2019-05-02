FROM alpine

RUN apk add --no-cache npm \
    && npm install --production -g elasticdump \
    && rm -rf /var/cache/apk/* /tmp/*

ENTRYPOINT ["elasticdump"]
