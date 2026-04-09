
FROM node:20-alpine

WORKDIR /app

RUN echo "const http = require('http'); \
http.createServer((req, res) => { \
  res.end('Hello World'); \
}).listen(3000);" > server.js

EXPOSE 3000

CMD ["node", "server.js"]
