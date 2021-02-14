# Container image that runs your code
FROM node:current-alpine

# Install CF CLI
RUN apk update && apk add curl
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=v7&source=github" | tar -zx
RUN mv cf7 /usr/local/bin
COPY . .
RUN npm install --production
ENTRYPOINT ["node", "/lib/main.js"]