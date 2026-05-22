FROM node:22-alpine
RUN apk update && apk add git
ADD package.json package-lock.json /app/
RUN cd /app && npm install --include=dev
COPY . /app
RUN npm run build
WORKDIR /app
CMD [ "node", "src" ]
