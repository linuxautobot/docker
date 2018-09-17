#Step 1.
FROM node:8.11.2-alpine

#Step 2
LABEL version="1.0"
LABEL description="This is beta Docker Image"
LABEL maintainer "linuxautobot@gmail.com"

#Step 3.
RUN mkdir -p /opt/Backend

WORKDIR /opt/Backend

#Step 4.
COPY  . ./

#Step 5.
ENV NODE_ENV production

#Step 6..
RUN npm install

#Step 7.
EXPOSE 4923

#Step 8.
CMD [ "npm", "start" ]
