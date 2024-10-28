// src/components/Profile.js
import React from 'react';

const Profile = () => {
    return (
        <div className="card mb-3">
            <div className="card-body">
                <h5 className="card-title">User Profile</h5>
                <p className="card-text">Welcome, [User Name]</p>
                <button className="btn btn-primary">Logout</button>
            </div>
        </div>
    );
};

export default Profile;