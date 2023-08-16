FROM node:14
WORKDIR /app/server
COPY ./server/package.json ./
RUN npm install --only=production
COPY ./server ./
EXPOSE 8000
ENV NODE_ENV=production
CMD [ "npm", "run", "dev" ]