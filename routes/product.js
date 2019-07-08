const express = require('express');

const router = express.Router();

const productController = require('../controllers/product');

router.get('/', productController.getIndexProduct);

router.post('/', productController.postProduct);

router.put('/:id', productController.putProduct);
router.delete('/:id', productController.deleteProduct);

module.exports = router;