const express = require('express');
const {
  getAllTips,
  createTips,
  getTips,
  editTips,
  deleteTips,
} = require('../controllers/tipsController');

const router = express.Router();

router.route('/').get(getAllTips).post(createTips);

router.route('/:id').get(getTips).put(editTips).delete(deleteTips);

module.exports = router;
