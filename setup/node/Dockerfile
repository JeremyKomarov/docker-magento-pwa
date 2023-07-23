FROM node:14

ENV MAGENTO_BACKEND_URL=https://jrstg.local/

WORKDIR /app

COPY app/ /app

RUN yarn install

EXPOSE 1000

CMD ["tail", "-f", "/dev/null"]