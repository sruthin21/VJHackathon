// src/components/HomePage.js
  import React from 'react';
import Header from './Header';
import Footer from './Footer';
import Categories from './Categories';
const HomePage = () => {
  return (
    <div className="min-h-screen flex flex-col">
      <Header />
      <main className="flex flex-col items-center p-4">
        <section className="text-center my-8">
          <p className="text-white text-3xl font-bold mb-2">Welcome to GOVERNMENT ONLINE SERVICES</p>
          <p className="text-lg text-gray-600"></p>
          <h1 className='text-white text-lg mb-8'>SERVICES PROVIDED</h1>
          <Categories/>
        </section>
      </main>
      <Footer />
    </div>
  );
};

export default HomePage;
