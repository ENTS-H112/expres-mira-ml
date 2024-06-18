# Menggunakan image dasar Node.js
FROM node:20

# Menentukan direktori kerja di dalam container
WORKDIR /usr/src/server

# Menyalin file package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Menginstal dependencies
RUN npm install

# Menyalin semua file kode ke direktori kerja
COPY . .

# Mengekspos port yang akan digunakan oleh aplikasi
EXPOSE 9000


# Menjalankan aplikasi
CMD ["npm", "start"]