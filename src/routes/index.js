const express = require('express');
const router= express.Router();
const pool = require('../database');

//render de precarga
router.get('/', async (req, res) => {
    try {
        const links = await pool.query('SELECT * FROM emprendedor');
        res.render('links/inicio', {links});
      } catch (error) {
        console.error(error);
      }
    
    res.render('links/inicio');
});

//render de boton menu inicio
router.get('/inicio', async (req, res)=>{
    try {
        const links = await pool.query('SELECT * FROM emprendedor');
        res.render('links/inicio', {links});
      } catch (error) {
        console.error(error);
      }
});

//render de tienda
router.get('/tienda', async (req, res)=>{
    try{
        const links = await pool.query('SELECT *  FROM producto');
        res.render('links/tienda', {links});
    }catch(error){
        console.error(error);
    }
});
router.get('/quienesomos', (req, res)=>{
    res.render('links/quienesomos');
});
    
//renderizado de todos los emprendedores

router.get('/emprendedor/:idemprendedor', async (req, res)=>{
     try{
         const { idemprendedor } = req.params;
         const esteemprendedor = await pool.query('SELECT * FROM emprendedor WHERE idemprendedor = ?', [idemprendedor]);
         res.render('links/emprendedor',{esteemprendedor});
    }catch(e){
        console.log(e);
    }
});

//render de filtro emprendedores
router.get('/emprendedorfiltrado/:categoria', async (req, res)=>{
    try{
        const { categoria } = req.params;
        const emprendedorfiltrado = await pool.query('SELECT * FROM emprendedor WHERE categoria = ?', [categoria]);
        res.render('links/emprendedorfiltrado',{emprendedorfiltrado});
        console.log(categoria+emprendedorfiltrado)
   }catch(e){
       console.log(e);
   }
});

//render de filtro de productos
router.get('/tiendafiltrada/:categoria', async (req, res)=>{
    try{
        const { categoria } = req.params;
        const productofiltrado = await pool.query('SELECT * FROM producto WHERE categoria = ?', [categoria]);
        res.render('links/tiendafiltrada',{productofiltrado});
   }catch(e){
       console.log(e);
   }
});

//render de perfil de producto
router.get('/producto/:idProducto', async (req, res)=>{
    try{
        const { idProducto } = req.params;
        const producto = await pool.query('SELECT * FROM producto WHERE idProducto = ?', [idProducto]);
        res.render('links/producto',{producto});
   }catch(e){
       console.log(e);
   }
});
module.exports = router;