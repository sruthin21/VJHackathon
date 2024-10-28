import React from 'react';

const TrackingApplication = () => {
  return (
    <div className="my-4 p-4 bg-light rounded">
      <h2>Track Your Application</h2>
      <form>
        <div className="form-group">
          <label>Application ID</label>
          <input type="text" className="form-control" placeholder="Enter application ID" />
        </div>
        <button type="submit" className="btn btn-primary mt-2">Track</button>
      </form>
    </div>
  );
};

export default TrackingApplication;
