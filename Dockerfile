# Establece la imagen base
FROM node:16-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de dependencia de Yarn
COPY package.json yarn.lock tsconfig.json ./

# Instala las dependencias de Yarn
RUN yarn install

# Copia el resto de los archivos
COPY . .

# Compila el proyecto TypeScript
RUN yarn build

# Expone el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "dist/app.js"]
