FROM ubuntu:18.04
WORKDIR /opt/app
COPY . .

apt-get update
apt-get install curl
curl -sL https://deb.nodesource.com/setup_10.x | bash
apt-get install nodejs

RUN npm install --only=production
EXPOSE 8888
CMD ["npm", "start"]