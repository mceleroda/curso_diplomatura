import React, { useEffect, useState } from "react";
import '../App.css';
import axios from 'axios';
import PreciosItem from "../components/precios/PreciosItem";
import '../styles/components/pages/PreciosPage.css'

const PreciosPage = (props) => {

    const [loading, setLoading] = useState(false);
    const [precios, setPrecios] = useState([]);

    useEffect(() => {
        const cargarPrecios = async () => {
            setLoading(true);
            //const response = await axios.get(`${process.env.REACT_APP_API_URL}/api/precios`);
            const response = await axios.get('http://localhost:3000/api/precios');
            setPrecios(response.data);
            setLoading(false);
        };
        cargarPrecios();

    }, []);
    return (
        <section className="holder">
            <h2>Precios</h2>
            {loading ? (
                <p>Cargando...</p>
            ) : (
                precios.map(item => 
                <PreciosItem key={item.id_producto}
                    imagen={item.imagen} producto={item.producto}
                    precio={item.precio} tipo_precio={item.tipo_precio}/>)
            )}
        </section>
    );
}

export default PreciosPage;
