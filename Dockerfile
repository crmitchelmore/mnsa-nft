FROM node:16-alpine
COPY . .
RUN cd . && npm install
EXPOSE 80
CMD ["node", "index.js"]