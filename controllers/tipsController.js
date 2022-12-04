const model = require('../models/index');

// @desc    Mengambil seluruh data tips
// @route   GET /tips
// @access  PUBLIC
getAllTips = async (req, res, next) => {
  try {
    const tips = await model.tips.findAll();
    res.status(200).json({
      success: true,
      message: 'Data tips berhasil didapatkan',
      data: tips,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

// @desc    Membuat data tips
// @route   POST /tips
// @access  PUBLIC
createTips = async (req, res, next) => {
  try {
    const tips = await model.tips.create({
      title: req.body.title,
      descDetail: req.body.descDetail,
      image: req.file.path,
    });
    res.status(200).json({
      success: true,
      message: 'Data tips berhasil dibuat',
      data: tips,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

getTips = async (req, res, next) => {
  try {
    const tips = await model.tips.findByPk(req.params.id);
    if (!tips) {
      return res.status(404).json({
        success: false,
        message: `Data tips ID:${req.params.id} Tidak ditemukan`,
      });
    }

    res.status(200).json({
      success: true,
      message: `Data tips ID: ${req.params.id} berhasil ditemukan`,
      data: tips,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

editTips = async (req, res, next) => {
  try {
    const tips = await model.tips.findByPk(req.params.id);
    if (!tips) {
      return res.status(404).json({
        success: false,
        message: `Data tips ID:${req.params.id} Tidak ditemukan`,
      });
    }

    await tips.update(req.body);
    res.status(200).json({
      success: true,
      message: `Data tips ID: ${req.params.id} berhasil diperbarui`,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

deleteTips = async (req, res, next) => {
  try {
    const tips = await model.tips.findByPk(req.params.id);
    if (!tips) {
      return res.status(404).json({
        success: false,
        message: `Data tips ID:${req.params.id} Tidak ditemukan`,
      });
    }

    await tips.destroy();
    res.status(200).json({
      success: true,
      message: `Data tips ID: ${req.params.id} berhasil dihapus`,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

module.exports = {
  getAllTips,
  createTips,
  getTips,
  editTips,
  deleteTips
};
