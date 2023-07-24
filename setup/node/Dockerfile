ARG NODE_VER

FROM node:${NODE_VER}-alpine

WORKDIR /app

RUN yarn install

EXPOSE 1000

CMD ["tail", "-f", "/dev/null"]