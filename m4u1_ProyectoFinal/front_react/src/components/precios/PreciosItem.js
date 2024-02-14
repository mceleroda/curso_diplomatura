import React from 'react';
import Card from 'react-bootstrap/Card';
import Col from 'react-bootstrap/Col'

const PreciosItem = (props) => {
    const { producto, precio, tipo_precio, imagen } = props;

    return (
        <Col>
            <Card className='card-precio' style={{ width: '18rem' }}>
                <Card.Img variant="top" src={imagen} />
                <Card.Body>
                    <Card.Title>{producto}</Card.Title>
                    <Card.Text>
                        ${precio} - {tipo_precio}
                    </Card.Text>
                </Card.Body>
            </Card>
        </Col>
    );
}

export default PreciosItem;