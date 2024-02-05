import React from "react";

import '../styles/components/pages/ContactoPage.css'
import '../App.css'

const ContactoPage = (props) => {
    return (
        <main className="holder contacto">
            <div>
                <h2>Contacto Rápido</h2>
                <form action="" method="" className="formulario">
                    <p>
                        <label for="nombre">Nombre</label>
                        <input type="text" name="" />
                    </p>
                    <p>
                        <label for="email">Email</label>
                        <input type="text" name="" />
                    </p>
                    <p>
                        <label for="telefono">Teléfono</label>
                        <input type="text" name="" />
                    </p>
                    <p>
                        <label for="mensaje">Consulta</label>
                        <textarea name=""></textarea>
                    </p>
                    <p className="acciones"><input type="submit" value="Enviar"/>
                        </p>
                </form>
            </div>
            <div className="datos">
                <h2>Otras vías de comunicación</h2>
                <p>También puede contactarse con nosotros usando los siguientes medios</p>
                <ul>
                    <li>Wsp: +54 9 11 3435-0584</li>
                    <li>Facebook: lodevalentinook</li>
                    <li>Instagram: @lodevalentinook</li>
                </ul>
            
            </div>

        </main>
    );
}

export default ContactoPage;