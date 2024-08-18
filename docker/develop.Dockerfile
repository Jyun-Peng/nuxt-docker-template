FROM node:20.16-bookworm-slim

RUN corepack enable

WORKDIR /src

COPY src/package.json src/yarn.lock ./

RUN yarn install

COPY src .

EXPOSE 3000/tcp

CMD ["yarn", "run" ,"dev"]