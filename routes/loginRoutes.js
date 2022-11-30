// const { Router } = require('express');
const express = require('express');

const router = express.Router();
const { loginUser } = require('../controllers/userController');

router.route('/').post(loginUser);

module.exports = router;
