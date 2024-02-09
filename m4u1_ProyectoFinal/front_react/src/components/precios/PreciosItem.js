import React from 'react';

const PreciosItem = (props) => {
    const { producto, tipo_producto, precio, tipo_precio, imagen } = props;

    return (
        <div className="precios">
            <h3>{producto}</h3>
            <p>{tipo_producto}</p>
            <p>{precio}</p>
            <p>{tipo_precio}</p>
            <img src={imagen} alt=''/>
            <hr/>
        </div>
    );
}

export default PreciosItem;