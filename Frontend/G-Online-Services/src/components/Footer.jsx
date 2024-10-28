import React from 'react';

const Footer = () => {
  return (
    <footer className="bg-dark text-light py-3 mt-5">
      <div className="container">
        <div className="row">
          <div className="col-md-12 text-center">
            <p>&copy; {new Date().getFullYear()} Government Online Services</p>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;