// src/components/Login.js
import React from 'react';

const Login = () => {
  return (
    <div className="bg-gray-100 p-4 rounded shadow-md">
      <h2 className="text-xl font-bold mb-2">Login</h2>
      <input type="text" placeholder="Username" className="border rounded p-2 mb-2 w-full" />
      <input type="password" placeholder="Password" className="border rounded p-2 mb-4 w-full" />
      <button className="bg-blue-600 text-white p-2 rounded w-full">Login</button>
    </div>
  );
};

export default Login;
