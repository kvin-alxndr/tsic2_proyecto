# Utilizamos una imagen de Node.js basada en Linux (por ejemplo)
FROM node:alpine

# Establecemos el directorio de trabajo en /app
WORKDIR /app

# Exponemos el puerto en el que la aplicación estará escuchando
EXPOSE 3000

# Copiamos los archivos necesarios para instalar las dependencias
COPY package.json package-lock.json ./

# Instalamos las dependencias
RUN npm install

# Ahora copiamos el contenido del frontend al directorio de trabajo
COPY . ./

# Comando para iniciar la aplicación
CMD ["npm", "start"]
