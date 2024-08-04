FROM node:20.16-bookworm-slim

RUN corepack enable

WORKDIR /

COPY src src

WORKDIR /src

RUN yarn install
RUN yarn run build

ENV PORT=3000
ENV HOST=0.0.0.0

EXPOSE 3000/tcp

CMD ["node", ".output/server/index.mjs"]