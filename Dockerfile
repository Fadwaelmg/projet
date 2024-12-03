FROM node:16 
#installer node 
WORKDIR /app

COPY . /app
#coller le dossier courant dans app de la VM

RUN npm install && npm install express
#installer les logiciel dans la VM

COPY . . 

EXPOSE 3000
#definir un numero de port de seveur exposé pour les autres machines

CMD ["node", "server.js"]
#executer le serveur

