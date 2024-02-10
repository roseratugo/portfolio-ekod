const express = require('express');
const path = require('path');
const app = express();
const port = 3002;

// Définit le dossier contenant les fichiers statiques
app.use(express.static('public'));

// Route principale pour servir le fichier index.html
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/index.html'));
});

// Lance le serveur sur le port 3002
app.listen(port, () => {
    console.log(`Serveur lancé sur http://localhost:${port}`);
});
