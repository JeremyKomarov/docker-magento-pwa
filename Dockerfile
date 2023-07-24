ARG NODE_VER
ARG HOSTS_URL

FROM node:${NODE_VER}

ENV MAGENTO_BACKEND_URL=https://${HOSTS_URL}/

WORKDIR /app

COPY app/ /app

RUN yarn install

EXPOSE 1000

CMD ["tail", "-f", "/dev/null"]