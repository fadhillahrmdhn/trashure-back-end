const express = require('express');

const router = express.Router();
const {
  getAllAnorganiks,
  createAnorganik,
  getAnorganik,
  editAnorganik,
  deleteAnorganik,
} = require('../controllers/anorganikController');

router.route('/').get(getAllAnorganiks).post(createAnorganik);

router.route('/:id').get(getAnorganik).put(editAnorganik).delete(deleteAnorganik);

module.exports = router;
