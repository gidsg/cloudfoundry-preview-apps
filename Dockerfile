# Container image that runs your code
FROM node:current-alpine

# Install CF CLI
RUN apk update && apk add curl
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=v7&source=github" | tar -zx
RUN mv cf7 /usr/local/bin

WORKDIR /usr/app
COPY package*.json ./
RUN npm install --production
COPY ./ /usr/app
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["npm","start"]
