FROM node

RUN mkdir -p /app
WORKDIR /app
RUN export  HTTPS_PROXY=http://10.0.4.2:3128/
RUN apt-get update && apt-get install vim


COPY package.json /app/
RUN npm install

COPY server.js /app/

EXPOSE 1111

CMD ["npm", "start"]
