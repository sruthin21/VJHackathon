// src/App.js

import React from 'react';
import { Routes, Route } from 'react-router-dom';
import HomePage from './components/HomePage';
import Profile from './Components/Profile';
import Login from './Components/Login';
import Categories from './Components/Categories';
import Tracking from './components/Tracking';
import Notifications from './Components/Notifications';
import Register from './components/Register';


const App = () => {
  return (
    <div className="bg-gradient-to-r from-cyan-500 to-blue-500 h-full w-full">
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/profile" element={<Profile />} />
        <Route path="/login" element={<Login />} />
        <Route path="/categories" element={<Categories />} />
        <Route path="/tracking" element={<Tracking />} />
        <Route path="/notifications" element={<Notifications />} />
        <Route path="/register" element={<Register />} />
      </Routes>
    </div>
  );
};

export default App;