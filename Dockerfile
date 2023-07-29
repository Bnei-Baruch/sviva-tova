FROM node:20-alpine as build

LABEL maintainer="edoshor@gmail.com"

WORKDIR /app
COPY . .
RUN yarn install --frozen-lockfile && \
    yarn build && \
    rm -rf node_modules && \
    yarn install --production --frozen-lockfile

FROM node:20-slim

WORKDIR /app
COPY --from=build /app .
EXPOSE 3000
ENTRYPOINT ["/app/misc/docker-entrypoint.sh"]