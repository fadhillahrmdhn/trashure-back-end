const express = require('express');
const multer = require('multer');
const {
  getAllTips,
  createTips,
  getTips,
  editTips,
  deleteTips,
} = require('../controllers/tipsController');

const router = express.Router();

// upload foto
const storage = multer.diskStorage({
  destination(reg, file, cb) {
    cb(null, 'images');
  },
  filename(req, file, cb) {
    cb(null, file.originalname);
  },
});
const upload = multer({ storage }).single('imageDetail');

router.route('/').get(getAllTips).post(upload, createTips);

router.route('/:id').get(getTips).put(upload, editTips).delete(deleteTips);

module.exports = router;
