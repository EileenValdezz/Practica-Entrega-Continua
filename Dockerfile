# Imagen base oficial de Node
FROM node:18

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos de proyecto
COPY package*.json ./
RUN npm install

COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para correr la aplicación
CMD ["node", "app.js"]
