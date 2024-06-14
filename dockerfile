<<<<<<< HEAD
# Gunakan image node.js versi terbaru sebagai dasar
FROM node:12

# Set working directory di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependencies
RUN npm install 

# Salin semua file yang ada di proyek Anda ke dalam working directory di dalam container
COPY . .

# Port yang akan di-Expose oleh container
EXPOSE 3000

# Perintah untuk menjalankan aplikasi Anda
CMD ["npm", "run", "dev"]
=======
FROM node:16.12

WORKDIR /usr/src/app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "start"]
>>>>>>> b840f88ccda34bb1c852e68e88a04d58e31a5260
