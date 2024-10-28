// src/components/Tracking.js
import React from 'react';

const Tracking = () => {
  return (
    <div className="bg-gray-100 p-4 rounded shadow-md">
      <h2 className="text-xl font-bold mb-2">Tracking Application</h2>
      <input type="text" placeholder="Enter Tracking ID" className="border rounded p-2 mb-2 w-full" />
      <button className="bg-blue-600 text-white p-2 rounded w-full">Track</button>
    </div>
  );
};

export default Tracking;
