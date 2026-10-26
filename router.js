const express = require('express');
const router = express.Router();
const conexion = require('./database/db');

router.get('/', (req, res) => {
    conexion.query('SELECT * FROM peliculas', (error, results) => {
        if (error) {
            throw error;
        } else {
            res.render('index', { results: results });
        }
    });
});

// Ruta para renderizar la vista de crear
router.get('/create', (req, res) => {
    res.render('create');
});

// Ruta para renderizar la vista de editar
router.get('/edit/:id', (req, res) => {
    res.render('edit');
});

module.exports = router;