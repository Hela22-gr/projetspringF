# Utilisez une image Node.js comme base
FROM node:14-alpine as builder

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et json.lock pour installer les dépendances
COPY package.json package-lock.json ./

# Copier les fichiers du projet dans le répertoire de travail
COPY . /app

RUN npm install

# Exposer le port sur lequel Nginx écoute (par défaut : 80)
EXPOSE 3000

CMD ["npm", "run"]
