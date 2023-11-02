FROM node:18-bullseye as bot
WORKDIR /app
COPY package*.json ./
RUN npm i
COPY . .
RUN apt-get update && apt-get install -y \
    build-essential \
    libvips \
    libvips-dev
CMD ["npm", "start"]
