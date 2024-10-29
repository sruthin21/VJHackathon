// src/App.js

import React from 'react';
import { Routes, Route } from 'react-router-dom';
import HomePage from './components/HomePage';
import Profile from './Components/Profile';
import Login from './Components/Login';
import Tracking from './components/Tracking';
import Notifications from './Components/Notifications';
import Register from './components/Register';
import Categories from './components/Categories';
import Services from './components/Services';
import Health from './components/Health';
import Edu from './components/Edu';
import Emp from './components/Emp';
import Legal from './components/Legal';
import Social from './components/Social';
import AdminPage from './components/AdminPage';
import AdminLogin from './components/AdminLogin';


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
        <Route path="/services" element={<Services />} />
        <Route path="/health" element={<Health />} />        
        <Route path="/edu" element={<Edu />} />
        <Route path="/social" element={<Social />} />
        <Route path="/emp" element={<Emp />} />
        <Route path="/legal" element={<Legal />} />
        <Route path="/tracking" element={<Tracking />} />
        <Route path="/adminpage" element={<AdminPage/>}/>
        <Route path="/AdminLogin" element={<AdminLogin/>}/>
      </Routes>
    </div>
  );
};

export default App;