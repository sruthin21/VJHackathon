import React from 'react';

const Notifications = () => {
  const notifications = [
    "Your healthcare application is approved.",
    "Tax filing deadline is approaching.",
    "Update on employment benefits.",
  ];

  return (
    <div className="my-4 p-4 bg-light rounded">
      <h2>Notifications</h2>
      <ul className="list-group">
        {notifications.map((notification, index) => (
          <li key={index} className="list-group-item">{notification}</li>
        ))}
      </ul>
    </div>
  );
};

export default Notifications;
