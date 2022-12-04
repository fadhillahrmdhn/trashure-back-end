const model = require('../models/index');

// @desc    Mengambil seluruh data organik
// @route   GET /organik
// @access  PUBLIC
getAllOrganiks = async (req, res, next) => {
  try {
    const organiks = await model.organik.findAll();
    res.status(200).json({
      success: true,
      message: 'Data organiks berhasil didapatkan',
      data: organiks,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

// @desc    Membuat data organik
// @route   POST /organik
// @access  PUBLIC
createOrganik = async (req, res, next) => {
  try {
    const organik = await model.organik.create({
      name: req.body.name,
      description: req.body.description,
      image: req.file.path,
      video: req.body.video,
    });
    res.status(200).json({
      success: true,
      message: 'Data organik berhasil dibuat',
      data: organik,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

// @desc    Mengambil data detail organik
// @route   GET /organik/:id
// @access  PUBLIC
getOrganik = async (req, res, next) => {
  try {
    const organik = await model.organik.findByPk(req.params.id, {
      include: [
        {
          model: model.tips,
          attributes: ['title', 'descDetail', 'imageDetail'],
        },
      ],
    });
    if (!organik) {
      return res.status(404).json({
        success: false,
        message: `Data Organik ID:${req.params.id} Tidak ditemukan`,
      });
    }

    res.status(200).json({
      success: true,
      message: `Data Organik ID: ${req.params.id} berhasil didapatkan`,
      data: organik,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

// @desc    Mengedit data organik
// @route   PUT /organik/:id
// @access  PUBLIC
editOrganik = async (req, res, next) => {
  try {
    const organik = await model.organik.findByPk(req.params.id);
    if (!organik) {
      return res.status(404).json({
        success: false,
        message: `Data Organik ID:${req.params.id} Tidak ditemukan`,
      });
    }

    if (!req.body.image) {
      await organik.update(req.body);
      try {
        res.status(200).json({
          succes: true,
          message: 'data user berhasil diperbaharui',
          data: organik,
        });
      } catch (err) {
        res.status(400).json({
          succes: false,
          message: err.message,
        });
      }
    }

    await organik.update({
      image: req.file.path,
    });

    res.status(200).json({
      success: true,
      message: `Data Organik ID: ${req.params.id} berhasil diperbarui`,
      data: organik,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

deleteOrganik = async (req, res, next) => {
  try {
    const organik = await model.organik.findByPk(req.params.id);
    if (!organik) {
      return res.status(404).json({
        success: false,
        message: `Data Organik ID:${req.params.id} Tidak ditemukan`,
      });
    }

    await organik.destroy();
    res.status(200).json({
      success: true,
      message: `Data Organik ID: ${req.params.id} berhasil dihapus`,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

module.exports = {
  getAllOrganiks,
  createOrganik,
  getOrganik,
  editOrganik,
  deleteOrganik
};
