FROM node:18-alpine AS build-stage

WORKDIR /app

COPY package*.json ./

RUN npm install --no-audit --silent

COPY . ./

RUN npm run build

FROM nginx:1.25.0-alpine AS production-stage

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY nginx.conf /etc/nginx/nginx.conf

COPY --from=build-stage /app/dist ./

ENTRYPOINT ["nginx", "-g", "daemon off;"]