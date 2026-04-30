// importando a biblioteca Express
const express = require('express');

// criando a aplicação
const app = express();

// definindo uma rota que retorna "Olá, Mundo!"
app.get('/', (req, res) => {
    res.json({mensagem: "Ola, mundo!"});
});

// definindo a porta onde a API vai rodar
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`servidor rodando em http://localhost:${PORT}`);
});
