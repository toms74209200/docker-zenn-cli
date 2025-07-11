FROM node:22-bookworm-slim

EXPOSE 8000

RUN npm install -g zenn-cli@0.2 \
    && npm cache clean --force

WORKDIR /zenn

USER node

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "preview" ]
