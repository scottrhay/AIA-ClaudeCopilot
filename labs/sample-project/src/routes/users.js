const express = require('express');
const router = express.Router();
const User = require('../models/user');

// In-memory storage for demo purposes
const users = [];
let nextId = 1;

/**
 * GET /api/users
 * Returns all users
 */
router.get('/', (req, res) => {
    res.json({
        count: users.length,
        users: users
    });
});

/**
 * GET /api/users/:id
 * Returns a single user by ID
 */
router.get('/:id', (req, res) => {
    const user = users.find(u => u.id === parseInt(req.params.id));

    if (!user) {
        return res.status(404).json({
            error: 'Not Found',
            message: `User with ID ${req.params.id} not found`
        });
    }

    res.json(user);
});

/**
 * POST /api/users
 * Creates a new user
 *
 * NOTE: This endpoint intentionally lacks input validation.
 * Lab Exercise 2 asks participants to add validation here.
 */
router.post('/', (req, res) => {
    const { username, email, password } = req.body;

    // TODO: Add input validation here
    // - Validate email format
    // - Validate username is at least 3 characters
    // - Validate password meets requirements

    const newUser = new User({
        id: nextId++,
        username,
        email,
        createdAt: new Date().toISOString()
    });

    users.push(newUser);

    res.status(201).json({
        message: 'User created successfully',
        user: newUser
    });
});

/**
 * DELETE /api/users/:id
 * Deletes a user by ID
 */
router.delete('/:id', (req, res) => {
    const index = users.findIndex(u => u.id === parseInt(req.params.id));

    if (index === -1) {
        return res.status(404).json({
            error: 'Not Found',
            message: `User with ID ${req.params.id} not found`
        });
    }

    const deletedUser = users.splice(index, 1)[0];

    res.json({
        message: 'User deleted successfully',
        user: deletedUser
    });
});

module.exports = router;
