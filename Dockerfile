# Imagem base para Node.js
FROM debian:12-slim AS builder

# Instala dependências para Node.js
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    software-properties-common \
    ca-certificates \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Cria um diretório de trabalho e configura permissões
WORKDIR /app

# Copia arquivos de dependências e instala
COPY package*.json ./
RUN npm install

# Copia o restante da aplicação
COPY . .

# Imagem final
FROM debian:12-slim

# Instala dependências para Node.js
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    software-properties-common \
    ca-certificates \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Cria um usuário não privilegiado
RUN adduser --disabled-password appuser

# Define o diretório de trabalho
WORKDIR /app

# Copia a aplicação da imagem de build
COPY --from=builder /app /app

# Exposição das portas
EXPOSE 3000

# Define o comando para iniciar a aplicação Node.js
USER appuser
CMD ["npm", "start"]
