const express = require('express');
const router = express.Router();

const pool = require ('../database');

router.get('/inicio', (req, res)=>{
    res.render('links/inicio');
});
router.get('/tienda', (req, res)=>{
    res.render('links/tienda');
});
router.get('/quienesomos', (req, res)=>{
    res.render('links/quienesomos');
});
router.get('/emprendedor', (req, res)=>{
    res.render('links/emprendedor');
});

/*

POST DE DATOS

router.post(¡¡aca va '/nombre del formulario post'!!, async (req, res)=>{
    const { title, url, description } = req.body;
    const newLink= {
        title,
        url,
        description
    };
    await pool.query('INSERT INTO producto set ?', [newLink]);
    res.send('resibidons kpo gg wp');
});*/

module.exports = router;