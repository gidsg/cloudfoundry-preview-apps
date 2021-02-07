# Container image that runs your code
FROM node:current-alpine

# Install CF CLI
RUN apk update && apk add curl
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=v7&source=github" | tar -zx
RUN mv cf /usr/local/bin

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
