# Criação e configuração de servidor app-web
## Projeto Final desenvolvido para a disciplina de Redes e Infraestrutura do curso de Pós Graduação em Desenvolvimento Web do IFSP

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
**Construir a imagem:**
```
docker build -t minha-app .
```

**Executar o contêiner:**
```
 docker run -d -p 3000:3000 -p 27017:27017 --name nome-app nome-app 
```
**Testando:**

Verificar o contêiner:
```
docker ps
```

**Acessar a aplicação:** 
Abra o navegador em `http://localhost:3000.`

**Pré-requisitos:** 
Certifique-se de ter o Docker instalado.
Problemas comuns: Verifique se as portas estão mapeadas corretamente e se as dependências estão instaladas.
Para mais detalhes, consulte a documentação do Docker e do MongoDB.
