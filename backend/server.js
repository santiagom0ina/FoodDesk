const express = require('express');
const cors = require('cors');

const app = express();

app.use(cors());
app.use(express.json());
const productosRoutes = require('./routes/productos');

app.use('/api/productos', productosRoutes);

app.get('/', (req, res) => {
    res.json({
        mensaje: 'Bienvenido a FoodDesk',
        estado: 'Servidor funcionando correctamente'
    });
});

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Servidor iniciado en http://localhost:${PORT}`);
});