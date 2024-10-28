import React from 'react';

const Login = () => {
  return (
    <div className="my-4 p-4 bg-light rounded">
      <h2>Login</h2>
      <form>
        <div className="form-group">
          <label>Email</label>
          <input type="email" className="form-control" placeholder="Enter email" />
        </div>
        <div className="form-group">
          <label>Password</label>
          <input type="password" className="form-control" placeholder="Password" />
        </div>
        <button type="submit" className="btn btn-primary mt-2">Login</button>
      </form>
    </div>
  );
};

export default Login;
