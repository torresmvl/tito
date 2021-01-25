FROM ghcr.io/torresmvl/tito:base AS node

RUN apk add --no-cache --virtual .node-deps \
    nodejs \
    npm \
    && npm install -g pm2
