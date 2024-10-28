// src/components/Categories.js
import React from 'react';

const Categories = () => {
  const categories = ["Healthcare", "Education", "Transportation", "Utilities"];

  return (
    <div className="bg-gray-100 p-4 rounded shadow-md">
      <h2 className="text-xl font-bold mb-2">Categories</h2>
      <ul className="space-y-2">
        {categories.map((category, index) => (
          <li key={index} className="bg-blue-200 p-2 rounded">{category}</li>
        ))}
      </ul>
    </div>
  );
};

export default Categories;
