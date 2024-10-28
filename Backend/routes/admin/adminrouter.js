const express = require('express');
const router = express.Router();
const { PrismaClient } = require('@prisma/client');
const bcrypt = require('bcrypt');
router.use(express.json());
const prisma = new PrismaClient();

// Admin Login Route
router.post('/login', async (req, res) => {
    const { adminId, password } = req.body;

    if (!adminId || !password) {
        return res.status(400).json({ message: 'Admin ID and password are required' });
        console.log()
    }

    try {
        const admin = await prisma.admin.findUnique({
            where: { adminId: adminId },
        });

        if (!admin) {
            return res.status(401).json({ message: 'Invalid admin ID or password' });
        }

        // Compare the password with the hashed password in the database
        const isPasswordValid = await bcrypt.compare(password, admin.password);

        if (!isPasswordValid) {
            return res.status(401).json({ message: 'Invalid admin ID or password' });
        }

        // Authentication successful
        return res.status(200).json({ message: 'Login successful', adminId: admin.adminId });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
});

module.exports = router;