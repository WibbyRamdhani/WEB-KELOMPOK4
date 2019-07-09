const express = require('express');

const router = express.Router();

const booksController = require('../controllers/books');
const auth = require('../configs/auth');

router.get('/:id', auth.verifyToken, booksController.getIndexBooks);

module.exports = router;