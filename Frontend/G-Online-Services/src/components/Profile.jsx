// src/components/Profile.js
import React from 'react';

const Profile = () => {
  return (
    <div className="bg-gray-100 p-4 rounded shadow-md">
      <h2 className="text-xl font-bold mb-2">User Profile</h2>
      <p>Name: John Doe</p>
      <p>Email: john.doe@example.com</p>
      <button className="bg-blue-600 text-white p-2 rounded mt-4">Edit Profile</button>
    </div>
  );
};

export default Profile;
