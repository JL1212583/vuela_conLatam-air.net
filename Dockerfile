FROM node:18

WORKDIR /app

# Copiar primero los archivos de dependencias
COPY package*.json ./

RUN npm install

# Luego copiar el resto del código
COPY . .

CMD ["npm", "start"]
