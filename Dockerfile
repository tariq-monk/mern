FROM node:lts
WORKDIR /app
COPY . .
RUN cd server && npm install
ENV JWT_SECRET unsafe_jwt_secret
WORKDIR /app/server
EXPOSE 8000
CMD ["npm", "run", "start"]