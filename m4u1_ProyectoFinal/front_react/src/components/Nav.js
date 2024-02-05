import React from "react";

import { NavLink } from "react-router-dom";

import '../styles/components/layout/Nav.css';

const Nav = (props) => {

    return(
        <nav>
            <div>
                <ul>
                    <li><NavLink to="/" className={({ isActive }) => isActive ? "activo" : undefined}>Home</NavLink></li>
                    <li><NavLink to="/precios" className={({ isActive }) => isActive ? "activo" : undefined}>Precios</NavLink></li>
                    <li><NavLink to="/galeria" className={({ isActive }) => isActive ? "activo" : undefined}>Galería</NavLink></li>
                    <li><NavLink to="/contacto" className={({ isActive }) => isActive ? "activo" : undefined}>Contacto</NavLink></li>
                </ul>
            </div>

        </nav>
    )
} 

export default Nav;