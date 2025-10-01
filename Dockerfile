# 1. Usamos la imagen oficial de Node
FROM node:18

# 2. Creamos y establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos solo los archivos de dependencias primero para aprovechar la cache de Docker
COPY package*.json ./

# 4. Instalamos las dependencias
RUN npm install

# 5. Copiamos el resto del proyecto
COPY . .

# 6. Exponemos el puerto que usará la aplicación
EXPOSE 3000

# 7. Comando por defecto para iniciar la app
CMD ["npm", "start"]
