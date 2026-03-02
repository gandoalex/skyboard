# Image Node officielle
FROM node:20-alpine

# Dossier de travail
WORKDIR /app

# Copier package.json et installer les dépendances
COPY package.json package-lock.json* ./
RUN npm install --production

# Copier le reste du code
COPY . .

# Exposer le port de l'app
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]