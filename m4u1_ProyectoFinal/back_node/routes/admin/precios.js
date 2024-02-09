var express = require('express');
var router = express.Router();
var preciosModel = require('../../models/preciosModel');
var util = require('util');
var cloudinary = require('cloudinary').v2;
var uploader = util.promisify(cloudinary.uploader.upload);
var destroy = util.promisify(cloudinary.uploader.destroy);


router.get('/', async function (req, res, next) {

    var precios = await preciosModel.getPrecios();

    precios = precios.map(precio => {
        if (precio.img_id) {
            const imagen = cloudinary.image(precio.img_id, {
                width: 100,
                height: 100,
                crop: 'fill'
            });
            return {
                ...precio,
                imagen
            }
        } else {
            return {
                ...precio,
                imagen: '',
            }
        }
    });

    res.render('admin/precios', {
        layout: 'admin/layout',
        usuario: req.session.nombre,
        precios
    });
});

router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', {
        layout: 'admin/layout'
    });
});

router.post('/agregar', async (req, res, next) => {
    try {
        var img_id = '';
        if (req.files && Object.keys(req.files).length > 0) {
            imagen = req.files.imagen;
            img_id = (await uploader(imagen.tempFilePath)).public_id;
        } 
        
        if (req.body.producto != "" && req.body.tipo_producto != "" && req.body.precio != "" && req.body.tipo_precio != "") {
            await preciosModel.insertPrecios(
                {
                    ...req.body,
                    img_id,
                });
            res.redirect('/admin/precios')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargo el producto'
        })
    }
});

router.get('/eliminar/:id_producto', async (req, res, next) => {
    var id_producto = req.params.id_producto;

    let precio = await preciosModel.getPreciosById(id_producto);
    if (precio.img_id) {
        await (destroy(precio.img_id));
    }


    await preciosModel.deletePreciosById(id_producto);
    res.redirect('/admin/precios');
});

router.get('/editar/:id_producto', async (req, res, next) => {
    var id_producto = req.params.id_producto;
    // console.log(req.params.id_producto);
    var precio = await preciosModel.getPreciosById(id_producto);

    
    res.render('admin/editar', {
        layout: 'admin/layout',
        precio
    })
});

router.post('/editar', async (req, res, next) => {
    try {
        let img_id = req.body.img_original;
        let borrar_img_vieja = false;
        if (req.body.img_delete === "1") {
            img_id = null;
            borrar_img_vieja = true;
        } else {
            if (req.files && Object.keys(req.files).length > 0) {
                imagen = req.files.imagen;
                img_id = (await uploader(imagen.tempFilePath)).public_id;
                borrar_img_vieja = true;
            }
        }
        if (borrar_img_vieja && req.body.img_original) {
            await (destroy(req.body.img_original));
        }

        var obj = {
            producto: req.body.producto,
            tipo_producto: req.body.tipo_producto,
            precio: req.body.precio,
            tipo_precio: req.body.tipo_precio,
            img_id
        }
        console.log(obj)

        await preciosModel.editarPrecioById(obj, req.body.id_producto);
        res.redirect('/admin/precios');
    } catch (error) {
        console.log(error)
        res.render('admin/editar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se edito el precio'
        });
    }
});


module.exports = router;