import React from 'react';
import { Link } from 'react-router-dom';

const Header = () => {
  return (
    <header className="bg-light py-3">
      <div className="container">
        <div className="row">
          <div className="col-md-4">
            <Link to="/">
              <img src="/logo.png" alt="Government Logo" className="img-fluid" />
            </Link>
          </div>
          <div className="col-md-8 text-right">
            <Link to="/profile" className="btn btn-outline-primary mr-2">
              Profile
            </Link>
            <Link to="/login" className="btn btn-primary">
              Login
            </Link>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;