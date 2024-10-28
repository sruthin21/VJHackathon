// src/components/Header.js
import React from 'react';

const Header = () => {
  return (
    <header className="bg-blue-600 text-white p-4 flex justify-between">
      <h1 className="text-xl font-bold">Government Online Services</h1>
      <nav>
        <ul className="flex space-x-4">
          <li><a href="#" className="hover:underline">Home</a></li>
          <li><a href="#" className="hover:underline">Categories</a></li>
          <li><a href="#" className="hover:underline">Login</a></li>
        </ul>
      </nav>
    </header>
  );
};

export default Header;
