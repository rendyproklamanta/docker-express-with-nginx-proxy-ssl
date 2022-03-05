FROM node:16-alpine

ENV SRCDIR /src
RUN mkdir -p $SRCDIR/app && chown -R node:node $SRCDIR

WORKDIR $SRCDIR/app
COPY ./package.json .

RUN yarn cache clean && yarn --verbose

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]