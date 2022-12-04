const express = require('express');
const multer = require('multer');
const {
  getAllOrganiks,
  createOrganik,
  getOrganik,
  editOrganik,
  deleteOrganik,
} = require('../controllers/organikController');

const storage = multer.diskStorage({
  destination(reg, file, cb) {
    cb(null, 'images');
  },
  filename(req, file, cb) {
    cb(null, file.originalname);
  },
});

const upload = multer({ storage }).single('image');

const router = express.Router();

router.route('/').get(getAllOrganiks).post(upload, createOrganik);

router.route('/:id').get(getOrganik).put(editOrganik).delete(deleteOrganik);

module.exports = router;
