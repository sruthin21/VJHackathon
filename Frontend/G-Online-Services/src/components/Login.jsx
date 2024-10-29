// src/components/Login.js
import React, { useState } from 'react';


const Login = () => {
        const [loginData, setLoginData] = useState({
          loginId: '',
          password: ''
      });

      const handleChange = (e) => {
          const { name, value } = e.target;
          setLoginData({
              ...loginData,
              [name]: value,
          });
      };

      const handleSubmit = (e) => {
          e.preventDefault();
          // Handle login logic here
          console.log('Login submitted:', loginData);
          // Reset form
          setLoginData({
              loginId: '',
              password: ''
          });
      };
  return (
    <div className="flex items-center justify-center h-screen">
            <div className="flex flex-col p-8 rounded shadow-lg">
            <div className="container mx-auto p-4">
            <h2 className="text-2xl mb-4">Login</h2>
            <form onSubmit={handleSubmit} className="bg-gray-100 p-6 rounded shadow-md">
                <div className="mb-4">
                    <label htmlFor="loginId" className="block text-gray-700">Login ID:</label>
                    <input
                        type="text"
                        id="loginId"
                        name="loginId"
                        value={loginData.loginId}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="password" className="block text-gray-700">Password:</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        value={loginData.password}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <button
                    type="submit"
                    className="bg-red-500 text-white px-4 py-2 rounded hover:bg-blue-600"
                >
                    Login
                </button>
            </form>
        </div>
            </div>
    </div>
  );
};

export default Login;