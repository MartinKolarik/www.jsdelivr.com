FROM node:22-alpine
RUN apk update && apk add git
ADD package.json package-lock.json /app/
RUN cd /app && npm install --include=dev && npm run build
COPY . /app
WORKDIR /app
CMD [ "node", "src" ]
