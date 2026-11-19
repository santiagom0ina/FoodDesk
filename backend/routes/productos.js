
const express = require('express');

const router = express.Router();

module.exports = router;


const pool = require('../db');

// GET: consultar todos los productos
router.get('/', async (req, res) => {
    try {
        const resultado = await pool.query(
            'SELECT * FROM productos ORDER BY id ASC'
        );

        res.json(resultado.rows);

    } catch (error) {
        console.error('Error al consultar productos:', error);
        res.status(500).json({
            mensaje: 'Error al consultar los productos'
        });
    }
});


// GET: consultar un producto por su ID
router.get('/:id', async (req, res) => {
    try {
        const id = req.params.id;

        const resultado = await pool.query(
            'SELECT * FROM productos WHERE id = $1',
            [id]
        );

        if (resultado.rows.length === 0) {
            return res.status(404).json({
                mensaje: 'Producto no encontrado'
            });
        }

        res.json(resultado.rows[0]);

    } catch (error) {
        console.error('Error al consultar producto:', error);
        res.status(500).json({
            mensaje: 'Error al consultar el producto'
        });
    }
});


module.exports = router;
