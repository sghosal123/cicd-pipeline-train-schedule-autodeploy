FROM node:latest
WORKDIR /usr/src/app
RUN echo 'https://github.com/sghosal123/cicd-pipeline-train-schedule-autodeploy.git'
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
