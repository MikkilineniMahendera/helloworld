FROM node:alpine AS builder
WORKDIR /react-app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]