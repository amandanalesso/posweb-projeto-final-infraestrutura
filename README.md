# Projeto Final - Redes e Infraestrutura

## Descrição

Este projeto utiliza Docker para criar um contêiner com Node.js e MongoDB. A aplicação Node.js é uma API simples que se conecta a um banco de dados MongoDB. Este documento descreve como construir e executar o contêiner, bem como testar a aplicação.

## Estrutura do Projeto

- `Dockerfile`: Arquivo usado para construir a imagem Docker.
- `server.js`: Arquivo principal da aplicação Node.js.
- `index.html`: Arquivo HTML servido pela aplicação.
- `package.json`: Arquivo de configuração do Node.js com as dependências necessárias.

## Dockerfile

O `Dockerfile` está dividido em duas partes:

1. **Imagem de Build**:
   - Base: `debian:12-slim`
   - Instala o Node.js, npm e MongoDB.
   - Copia os arquivos da aplicação e instala as dependências Node.js.

2. **Imagem Final**:
   - Base: `debian:12-slim`
   - Instala o Node.js, npm e MongoDB.
   - Copia a aplicação da imagem de build.
   - Define o comando de inicialização para a aplicação Node.js.

## Construindo a Imagem Docker

Para construir a imagem Docker, execute o seguinte comando no diretório onde o `Dockerfile` está localizado:

```bash
docker build -t projeto-final-redes-infra .
