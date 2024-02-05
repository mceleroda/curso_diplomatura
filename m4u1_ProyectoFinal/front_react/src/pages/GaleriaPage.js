import React from "react";

import '../styles/components/pages/GaleriaPage.css'
import '../App.css'

const GaleriaPage = (props) => {
    return (
        <main class="holder">
            <h2>Dulce</h2>
            <div class="galeria">

                <img src="images/tortas 1.png" alt="" />
                <img src="images/tortas 2.png" alt="" />
                <img src="images/tortas 3.png" alt="" />
                <img src="images/tortas 4.png" alt="" />
            </div>
            <h2>Salado</h2>
            <div class="galeria">

                <img src="images/matambre.png" alt="" />
            </div>



        </main>
    );
}

export default GaleriaPage