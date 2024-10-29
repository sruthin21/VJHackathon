import React, { useState, useEffect } from 'react';

const Profile = () => {
  const [profile, setProfile] = useState({
    name: "Einstein",
    email: "einsteinellandala@gmail.com",
    aadharNumber: 619863051767,
    phone: +918520658742
  });
  const [loading, setLoading] = useState(false); // Start with loading true
  const [error, setError] = useState(null);
  

  if (loading) return <p>Loading profile...</p>;
  if (error) return <p>{error}</p>;

  return (
    <div style={styles.container}>
      <h1 style={styles.title}>Profile Page</h1>
      {profile && (
        <div style={styles.profileContainer}>
          <p><strong>Name:</strong> {profile.name}</p>
          <p><strong>Email:</strong> {profile.email}</p>
          <p><strong>Aadhar No:</strong> {profile.aadharNumber}</p>
          <p><strong>Phone No:</strong> {profile.phone}</p>
        </div>
      )}
    </div>
  );
};

const styles = {
  container: {
    padding: '20px',
    fontFamily: 'Arial, sans-serif',
  },
  title: {
    fontSize: '24px',
    fontWeight: 'bold',
  },
  profileContainer: {
    marginTop: '20px',
    padding: '15px',
    border: '1px solid #ccc',
    borderRadius: '8px',
    backgroundColor: '#f9f9f9',
  },
};

export default Profile;
