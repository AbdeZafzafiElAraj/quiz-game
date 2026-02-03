# Usamos Node 18 (versión estable y ligera)
FROM node:18-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos primero los archivos de dependencias para aprovechar la caché
COPY package.json ./

# Instalamos las librerías necesarias
RUN npm install

# Copiamos el resto de los archivos (index.js, public/, etc.)
COPY . .

# El puerto que usa tu servidor (según tu código es el 3000 o el que definas)
EXPOSE 3000

# Comando para arrancar el juego
CMD ["node", "index.js"]