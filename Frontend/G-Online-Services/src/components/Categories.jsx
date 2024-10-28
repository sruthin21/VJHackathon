import React from 'react';

const Categories = () => {
  const categories = ["Healthcare", "Education", "Taxes", "Employment", "Transport"];

  return (
    <div className="my-4 p-4 bg-light rounded">
      <h2>Service Categories</h2>
      <ul className="list-group">
        {categories.map((category, index) => (
          <li key={index} className="list-group-item">{category}</li>
        ))}
      </ul>
    </div>
  );
};

export default Categories;
