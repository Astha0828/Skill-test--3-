FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY . .
ENV PORT=3003
EXPOSE 3003
CMD ["node", "server.js"]
