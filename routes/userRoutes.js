// const { Router } = require('express');
const express = require('express');

const router = express.Router();
const {
  getAllUsers,
  getUser,
  deleteUser,
  updateUser,
} = require('../controllers/userController');

router.route('/').get(getAllUsers);
router.route('/edit/:id').put(updateUser);
router.route('/:id').get(getUser).delete(deleteUser);

module.exports = router;
