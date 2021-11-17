FROM node:17-alpine

RUN apk --update add --no-cache git openssh

WORKDIR /opt
ENV PATH="/opt/node_modules/.bin:${PATH}"

COPY package.json yarn.lock ./
RUN yarn --prod && \
    rm package.json yarn.lock

ENTRYPOINT ["semantic-release"]
CMD ["--help"]
