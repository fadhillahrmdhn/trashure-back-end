const express = require('express');
const multer = require('multer');

const router = express.Router();
const {
  getAllOrganiks,
  createOrganik,
  getOrganik,
  editOrganik,
  deleteOrganik,
} = require('../controllers/organikController');

// upload foto
const storage = multer.diskStorage({
  destination(reg, file, cb) {
    cb(null, 'images');
  },
  filename(req, file, cb) {
    cb(null, file.originalname);
  },
});
const upload = multer({ storage }).single('image');

router.route('/').get(getAllOrganiks).post(upload, createOrganik);

router.route('/:id').get(getOrganik).put(upload, editOrganik).delete(deleteOrganik);

module.exports = router;
