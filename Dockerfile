FROM node:20-alpine

# Çalışma dizini
WORKDIR /app

# package dosyaları
COPY package*.json ./

# bağımlılıklar
RUN npm install

# proje dosyaları
COPY . .

# astro build
RUN npm run build

# astro preview portu
EXPOSE 4321

# prod start
CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0", "--port", "4321", "--strictPort"]
