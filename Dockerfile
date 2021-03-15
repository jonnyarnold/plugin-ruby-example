FROM ubuntu:20.04

WORKDIR /var/app

RUN apt-get update 
RUN apt-get -y install curl
RUN curl -fsSL https://deb.nodesource.com/setup_15.x | bash -

RUN apt-get -y install \
  netcat \
  nodejs

COPY . .
RUN npm install

ENTRYPOINT ["./node_modules/.bin/prettier", "--check", "**/*.{css,js,json,md,rb,toml,ts,yml}"]
