FROM node:latest
LABEL authors="uli"

WORKDIR /home/workspace

COPY . /home/workspace

RUN npm install -g pnpm

RUN pnpm install && pnpm run build

ENTRYPOINT ["pnpm","run", "preview","--host"]