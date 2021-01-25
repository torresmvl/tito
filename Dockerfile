FROM alpine:3.13 AS baseImage

RUN apk add --no-cache --virtual .run-deps \
    tini 

ENTRYPOINT [ "/sbin/tini", "--" ]    

FROM scratch AS tito

COPY --from=baseImage / /

CMD [ "/bin/ash" ]