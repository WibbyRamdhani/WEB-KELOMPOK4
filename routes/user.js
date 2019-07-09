const express = require('express');

const UserController = require('../controllers/user');

const router = express.Router();

// login & Register
router.post('/register', UserController.postRegister);
router.post('/login', UserController.postLogin);

module.exports = router;