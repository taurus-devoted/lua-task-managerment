FROM alpine:latest

RUN apk add --no-cache lua

WORKDIR /app

COPY . .

CMD ["lua", "main.lua"]
