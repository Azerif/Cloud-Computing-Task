 
# Menggunakan image dasar Node.js versi 14
FROM node:14

# Buat direktori kerja di dalam container
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependensi aplikasi
RUN npm install

# Salin seluruh kode aplikasi ke dalam container
COPY . .

# Ekspos port yang akan digunakan oleh aplikasi (misalnya port 3000)
EXPOSE 8000

# Jalankan aplikasi menggunakan node
CMD ["node", "app.js"]