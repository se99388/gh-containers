FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
# ENV MONGODB_DB_NAME gha-demo1
# ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
# ENV MONGODB_USERNAME maximilian
# ENV MONGODB_PASSWORD eI3R3UfNlJgWJe17


ENV MONGODB_USERNAME=ofir
ENV MONGODB_PASSWORD=XtBsZ6oJHGyR3xit
ENV MONGODB_CLUSTER_ADDRESS=cluster0.4ymfhl6.mongodb.net
ENV MONGODB_DB_NAME=goals-dev

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]

