# backend/Dockerfile
FROM node:18.18.2-alpine3.17

# Cria diretório de trabalho
WORKDIR /app

# Copia package.json e package-lock.json
COPY package*.json ./

# Instala dependências
RUN rm -rf ./node_modules
RUN rm -rf package-lock.json
RUN npm install

# Copia o restante do código
COPY . .

# Copia o script wait-for-it.sh
COPY wait-for-it.sh .

# Expõe a porta em que a aplicação vai rodar
EXPOSE 5000

# Dá permissão de execução ao script
RUN chmod +x wait-for-it.sh

# Comando para rodar a aplicação
CMD ["./wait-for-it.sh", "mysql:3306", "--", "npm", "start"]
