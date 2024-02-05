
// import './App.css';

import React from "react";

import { BrowserRouter, Routes, Route } from "react-router-dom"

import Header from "./components/Header";
import Nav from "./components/Nav";
import Footer from "./components/Footer";

import ContactoPage from "./pages/ContactoPage";
import GaleriaPage from "./pages/GaleriaPage";
import HomePage from "./pages/HomePage";
import PreciosPage from "./pages/PreciosPage";


function App() {
  return (
    <div className="App">
      <Header />

      <BrowserRouter>
      <Nav />
      <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/precios" element={<PreciosPage/>} />
          <Route path="/galeria" element={<GaleriaPage/>} />
          <Route path="/contacto" element={<ContactoPage/>} />
      </Routes>
      </BrowserRouter>
      <Footer />
    </div>
  );
}

export default App;
