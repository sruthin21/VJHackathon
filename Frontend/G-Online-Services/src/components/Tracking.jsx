// src/components/Tracking.js
import React from 'react';

const Tracking = () => {
  return (
    <div className="flex flex-row justify-center w-full h-screen p-4 rounded shadow-md">
      <div className='flex flex-col justify-center items-center'>
      <h2 className="text-xl font-bold mb-2">Tracking Application</h2>
      <input type="text" placeholder="Enter Tracking ID" className="border rounded p-2 mb-2 w-auto" />
      <button className="bg-blue-600 text-white p-2 rounded w-1/2">Track</button>
      </div>
    </div>
  );
};

export default Tracking;
