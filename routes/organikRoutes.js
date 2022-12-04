const express = require('express');
const {
  getAllOrganiks,
  createOrganik,
  getOrganik,
  editOrganik,
  deleteOrganik,
} = require('../controllers/organikController');

const router = express.Router();

router.route('/').get(getAllOrganiks).post(createOrganik);

router.route('/:id').get(getOrganik).put(editOrganik).delete(deleteOrganik);

module.exports = router;
