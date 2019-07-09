const Books = require('../models/books');
const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');

module.exports.getIndexBooks = (req, res) => {
    jwt.verify(req.token, process.env.SECRETKEY, (error, authData) => {
        if (error) {
            res.json({
                message: error
            });
        } else {
            Books.findAll({
                    where: {
                        id: req.params.id
                    }
                })
                .then((product) => {
                    res.json(product);
                })
                .catch((error) => {
                    console.log(error);
                })
        }
    })
}