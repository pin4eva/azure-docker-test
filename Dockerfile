FROM node:14-alpine
LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

# Install Java

RUN \
    apt -y install default-jre \
    apt -y install default-jdk

# Create app directory
WORKDIR /app

COPY package*.json ./

RUN npm install
# Bundle app source
COPY . .

EXPOSE 8080 80
CMD [ "npm", "start" ]
