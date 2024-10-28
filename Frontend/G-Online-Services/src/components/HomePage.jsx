// src/components/HomePage.js
import React from 'react';
import Header from './Header';
import Footer from './Footer';
import Login from './Login';
import Profile from './Profile';
import Categories from './Categories';
import Tracking from './Tracking';
import Notifications from './Notifications';

const HomePage = () => {
  return (
    <div className="min-h-screen flex flex-col">
      <Header />
      <main className="flex flex-col items-center p-4">
        <Login />
        <Profile />
        <Categories />
        <Tracking />
        <Notifications />
      </main>
      <Footer />
    </div>
  );
};

export default HomePage;
