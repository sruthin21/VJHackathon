// src/components/HomePage.js
  import React from 'react';
import Header from './Header';
import Footer from './Footer';

const HomePage = () => {
  return (
    <div className="min-h-screen flex flex-col">
      <Header />
      <main className="flex flex-col items-center p-4">
      <section className="text-center my-8">
      <p className="text-3xl font-bold mb-2">Welcome to GOVERNMENT ONLINE SERVICES</p>
      <p className="text-lg text-gray-600"></p>
      <h1>SERVICES PROVIDED</h1>
      <div className="my-8">
        <h1 className="text-2xl font-semibold mb-4"></h1>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div className="text-center">
            <img src="aadhaar.png" alt="AADHAR" className="rounded-lg mb-2" />
            <p className="font-medium">AADHAR</p>
          </div>
          <div className="text-center">
            <img src="" alt="ACT" className="rounded-lg mb-2" />
            <p className="font-medium">ACT</p>
          </div>
          <div className="text-center">
            <img src="" alt="" className="rounded-lg mb-2" />
            <p className="font-medium">BC WELFARE DEPARTMENT</p>
          </div>
          <div className="text-center">
            <img src="" alt="" className="rounded-lg mb-2" />
            <p className="font-medium">REGISTRATION FOR FREE ELECTRICITY TO RAJAKAS AND NAYEE BRAHMINS</p>
          </div>
        </div>
      </div>
    </section>
      </main>
      <Footer />
    </div>
  );
};

export default HomePage;
