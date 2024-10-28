// routes/user/userRoutes.js
const express = require('express');
const router = express.Router();
router.use(express.json());
// Define user routes
router.get('/', (req, res) => {
    res.send('User  Home Page');
});

router.get('/profile', (req, res) => {
    res.send('User  Profile Page');
});

module.exports = router;