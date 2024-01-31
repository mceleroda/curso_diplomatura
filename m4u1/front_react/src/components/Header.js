import React from 'react'

import '../styles/components/layout/Header.css';

const Header = (props) => {

    return (
        <header>
            <div className='holder'>
                <img src="images/logo lodevalentino.png" width="100" alt="lodevalentino" />
                <h1>Lo de Valentino - Monte Grande</h1>
            </div>
        </header>
    )
}

export default Header;