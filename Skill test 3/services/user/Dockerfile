FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY . .
ENV PORT=3001
EXPOSE 3001
CMD ["node", "server.js"]
