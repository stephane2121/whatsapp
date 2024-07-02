# Utiliser une image officielle Node.js comme image de base
FROM node:20

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers de package et package-lock dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances de l'application
RUN npm install

# Copier le reste des fichiers de l'application dans le répertoire de travail
COPY . .

# Exposer le port sur lequel l'application va s'exécuter
EXPOSE 5499

# Définir la commande pour démarrer l'application
CMD ["node", "index.js"]
