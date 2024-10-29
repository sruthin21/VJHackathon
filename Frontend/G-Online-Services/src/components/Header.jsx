// src/components/Header.js

import React from 'react';
import { Link } from 'react-router-dom';
import logo from '../assets/logo.jpeg'; // Adjust the path to your logo image

const Header = () => {
  return (
    <header className="flex justify-between items-center p-4 bg-gray-100 shadow">
      {/* Logo Section */}
      <div className="flex items-center">
        <img src={logo} alt="Logo" className="w-12 h-12 mr-3" />
      </div>

      {/* Title Section */}
      <h1 className="text-2xl font-semibold text-center flex-grow">
        Government Online Services
      </h1>

      {/* Navigation Links */}
      <nav className="space-x-4">
        <Link to="/profile" className="text-blue-600 hover:underline">
          Profile
        </Link>
        <Link to="/login" className="text-blue-600 hover:underline">
          Login
        </Link>
        <Link to="/Register" className="text-blue-600 hover:underline">
          Register
        </Link>
      </nav>
    </header>
  );
};

export default Header;