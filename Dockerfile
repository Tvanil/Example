# Linux x64
FROM alpine

LABEL maintainer="1615504154@qq.com"

# Install Node and NPM
RUN apk add --update nodejs npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
