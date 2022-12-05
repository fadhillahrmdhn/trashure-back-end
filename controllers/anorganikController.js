const model = require('../models/index');

// @desc    Mengambil seluruh data organik
// @route   GET /anorganik
// @access  PUBLIC
getAllAnorganiks = async (req, res, next) => {
  try {
    const anorganik = await model.anorganik.findAll();
    res.status(200).json({
      status: 'true',
      message: 'Berhasil mendapatkan seluruh data Anorganik',
      data: anorganik,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

// @desc    Membuat data organik
// @route   POST /anorganik
// @access  PUBLIC
createAnorganik = async (req, res, next) => {
  try {
    const anorganik = await model.anorganik.create({
      name: req.body.name,
      description: req.body.description,
      image: req.file.path,
      video: req.body.video,
    });
    res.status(200).json({
      success: true,
      message: 'Data organik berhasil dibuat',
      data: anorganik,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

// @desc    Mengambil data detail organik
// @route   GET /anorganik/:id
// @access  PUBLIC
getAnorganik = async (req, res, next) => {
  try {
    const anorganik = await model.anorganik.findByPk(req.params.id, {
      include: [{ model: model.tips }],
    });
    if (!anorganik) {
      return res.status(404).json({
        success: false,
        message: `Gagal mendapatkan data anorganik ID: ${req.params.id}`,
      });
    }
    res.status(200).json({
      success: true,
      message: `Berhasil mendapatkan data anorganik ID: ${req.params.id}`,
      data: anorganik,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

// @desc    Mengedit data organik
// @route   PUT /anorganik/:id
// @access  PUBLIC
editAnorganik = async (req, res, next) => {
  try {
    const anorganik = await model.anorganik.findByPk(req.params.id);
    if (!anorganik) {
      return res.status(404).json({
        success: false,
        message: `Gagal memperbarui data anorganik ID: ${req.params.id}`,
      });
    }

    if (!req.body.image) {
      await anorganik.update(req.body);
      try {
        res.status(200).json({
          succes: true,
          message: 'data user berhasil diperbaharui',
          data: anorganik,
        });
      } catch (err) {
        res.status(400).json({
          succes: false,
          message: err.message,
        });
      }
    }

    await anorganik.path({
      image: req.file.path,
    });

    res.status(200).json({
      success: true,
      message: `Berhasil memperbarui data anorganik ID: ${req.params.id}`,
      data: anorganik,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

deleteAnorganik = async (req, res, next) => {
  try {
    const anorganik = await model.anorganik.findByPk(req.params.id);
    if (!anorganik) {
      return res.status(404).json({
        success: false,
        message: `Gagal memperbarui data anorganik ID: ${req.params.id}`,
      });
    }
    await anorganik.destroy();
    res.status(200).json({
      success: true,
      message: `Berhasil menghapus data anorganik ID: ${req.params.id}`,
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

module.exports = {
  getAllAnorganiks,
  createAnorganik,
  getAnorganik,
  editAnorganik,
  deleteAnorganik
};
