const express = require('express');

const router = express.Router();

const productController = require('../controllers/product');
const auth = require('../configs/auth');

router.get('/', auth.verifyToken, productController.getIndexProduct);

router.post('/', productController.postProduct);

router.put('/:id', productController.putProduct);
router.delete('/:id', productController.deleteProduct);

module.exports = router;