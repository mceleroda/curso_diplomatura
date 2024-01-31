import React from "react";

import '../styles/components/pages/HomePage.css'
import '../App.css'

const HomePage = (props) => {
    return (
        <main className="holder">
            <div className="homeimg">
                <img src="images/foods3.png" alt="foods3"></img>

            </div>
            <div className="columnas">
                <div className="bienvenidos">
                    <h2>Bienvenidos</h2>
                    <p>En Lo de Valentino - Monte Grande llevamos el calor y el sabor 
                        de la cocina familiar directamente a tu puerta. Somos una familia que comparte
                        su pasión por la comida casera y auténtica con nuestros clientes. 
                        Desde nuestra mesa a su hogar, cada plato es una expresión de amor y dedicación. 
                        </p>
                       <p> Gracias por elegir Lo de Valentino - Monte Grande! Esperamos hacer de cada comida 
                        un momento especial para cada uno de ustedes. 
                    </p>
                    
                </div>
                <div className="testimonios">
                    <h2>Testimonios</h2>
                    <div className="testimonio">
                        <span className="cita">Súper recomendado. No se pueden perder ni lo dulce ni lo salado. Vayan a hacer su pedido.</span>
                        <span className="autor">Rosana Rodríguez</span>
                    </div>

                </div>
            </div>
        </main>
    );
}

export default HomePage;