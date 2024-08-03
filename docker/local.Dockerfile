FROM node:20.16-bookworm-slim

RUN corepack enable

WORKDIR /

COPY src src

WORKDIR /src

RUN yarn install

EXPOSE 3000/tcp

CMD ["yarn", "run" ,"dev"]