// src/components/Header.js

import React from 'react';
import { Link } from 'react-router-dom';
import logo from '../assets/logo.jpeg'; // Adjust the path to your logo image

const Header = () => {
  return (
    <header className="flex justify-between items-center p-4 bg-gray-100 shadow">
      <div className="flex items-center">
        <img src={logo} alt="Logo" className="w-12 h-12 mr-3" />
        <h1 className="text-2xl font-semibold">Government Online Serices</h1>
 
      </div>
      <nav className="flex space-x-4">
        <Link to="/profile" className="text-blue-600 hover:underline">Profile</Link>
        <Link to="/login" className="text-blue-600 hover:underline">Login</Link>
      </nav>
    </header>
  );
};

export default Header;