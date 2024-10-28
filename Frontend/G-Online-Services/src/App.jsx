import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import HomeContent from './Components/HomeContent';
import Profile from './Components/Profile';
import Login from './Components/Login';
import Categories from './Components/Categories';
import TrackingApplication from './Components/TrackingApplication';
import Notifications from './Components/Notifications';
import Header from './Components/Header';
import Footer from './Components/Footer';

function App() {
  return (
    <Router>
      <Header />
      <main>
        <Routes>
          <Route path="/" element={<HomeContent/>} />
          <Route path="/profile" element={<Profile/>} />
          <Route path="/login" element={<Login />} />
          <Route path="/categories" element={<Categories />} />
          <Route path="/track-application" element={<TrackingApplication />} />
          <Route path="/notifications" element={<Notifications />} />
        </Routes>
      </main>
      <Footer />
    </Router>
  );
}

export default App;