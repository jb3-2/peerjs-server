FROM node:alpine
RUN mkdir /peer-server
WORKDIR /peer-server
COPY bin ./bin
COPY dist ./dist
COPY package.json .
RUN npm install --production
EXPOSE 8080
ENTRYPOINT ["node", "bin/peerjs"]
CMD [ "--port", "8080", "--path", "/binenand", "--proxied", "true" ]
