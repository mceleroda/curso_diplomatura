var express = require('express');
var router = express.Router();
var preciosModel = require('./../models/preciosModel');
var cloudinary = require('cloudinary').v2;

router.get('/precios', async function (req, res, next) {
    let precios = await preciosModel.getPrecios();

    precios = precios.map(precios => {
        if (precios.img_id) {
            const imagen = cloudinary.url(precios.img_id, {
                width: 960,
                height: 200,
                crop: 'fill'
            });
            return {
                ...precios,
                imagen
            }
        } else {
            return {
                ...precios,
                imagen: '',
            }
        }
    });
    res.json(precios);
});

module.exports = router;