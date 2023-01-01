# menggunakan image node js versi 14
FROM node:14-alpine
# menentukan working directory pada /app
WORKDIR /app
# menyalin source code ke working directory /app
COPY . .
# environment untuk production
ENV NODE_ENV=production DB_HOST=item-db
# menginstall dependency production & build app
RUN npm install --production --unsafe-perm && npm run build
# mengekspos port 8080
EXPOSE 8080
# menjalankan server
CMD ["npm", "start"]