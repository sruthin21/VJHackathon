// app.js
const express = require('express');
const app = express();
const PORT = 3000;

// Import routes
const userRoutes = require('./routes/user/userrouter');
const adminRoutes = require('./routes/admin/adminrouter');

// Use routes with specific prefixes
app.use('/user', userRoutes);
app.use('/admin', adminRoutes);

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});