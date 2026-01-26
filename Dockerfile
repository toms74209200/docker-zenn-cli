# syntax=docker/dockerfile:1
# check=error=true

FROM node:24-trixie-slim

EXPOSE 8000

RUN npm install -g zenn-cli@0.4 \
    && npm cache clean --force

WORKDIR /zenn

USER node

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "preview" ]
