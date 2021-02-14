# Container image that runs your code
FROM node:current-alpine

# Install CF CLI
RUN apk update && apk add curl
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=v7&source=github" | tar -zx
RUN mv cf7 /usr/local/bin

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /usr/app
COPY ./ /usr/app
RUN npm install --production
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["npm","start"]
