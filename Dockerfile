# Utilise l'image officielle de Node.js comme image de base
FROM node:latest

# Définit le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copie le fichier 'package.json' et 'package-lock.json' (si disponible)
COPY package*.json ./

# Installe les dépendances du projet
RUN npm install

# Copie les fichiers et dossiers du projet dans le répertoire de travail du conteneur
COPY . .

# Expose le port 3002 sur lequel l'application va s'exécuter
EXPOSE 3002

# Commande pour démarrer l'application
CMD ["node", "app.js"]
