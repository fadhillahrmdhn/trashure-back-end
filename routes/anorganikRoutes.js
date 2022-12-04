const express = require('express');
const multer = require('multer');

const router = express.Router();
const {
  getAllAnorganiks,
  createAnorganik,
  getAnorganik,
  editAnorganik,
  deleteAnorganik,
} = require('../controllers/anorganikController');

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

router.route('/').get(getAllAnorganiks).post(upload, createAnorganik);

router.route('/:id').get(getAnorganik).put(editAnorganik).delete(deleteAnorganik);

module.exports = router;
