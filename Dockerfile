FROM alpine:3.13 AS baseImage

RUN apk add --no-cache --virtual .run-deps \
    tini && \
    adduser -D tito

FROM scratch AS tito

COPY --from=baseImage / /

ENTRYPOINT [ "/sbin/tini", "--" ]
CMD [ "/bin/ash" ]