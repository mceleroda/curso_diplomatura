var express = require('express');
var router = express.Router();
var preciosModel = require('./../models/preciosModel');
var cloudinary = require('cloudinary').v2;
var nodemailer = require('nodemailer');

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

router.post('/contacto', async (req, res) => {
    const mail = {
        to: 'mceleroda@gmail.com',
        subject: 'Contacto Web',
        html: `${req.body.nombre} se contacto a traves de la web y quiere mas informacion a este correo:
        ${req.body.email}
        <br> Ademas, hizo el siguiente comentario: ${req.body.mensaje} <br> Su tel es: ${req.body.telefono}`
    }

    const transport = nodemailer.createTransport ({
        host: process.env.SMTP_HOST,
        port: process.env.SMTP_PORT,
        auth: {
            user: process.env.SMTP_USER,
            pass: process.env.SMTP_PASS
        }
    });

    await transport.sendMail(mail)

    res.status(201).json({
        error: false,
        message: 'Mensaje Enviado'
    });
});

module.exports = router;