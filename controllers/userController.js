/* eslint-disable consistent-return */
const crypto = require('crypto');
const User = require('../models/userModel');

const getHashedPassword = (password) => {
  const sha256 = crypto.createHash('sha256');
  const hash = sha256.update(password).digest('base64');
  return hash;
};

module.exports = {
  // @desc menambahkan data user ke database
  async createUser(req, res) {
    try {
      const hashedPassword = getHashedPassword(req.body.password);
      const user = await User.create({
        name: req.body.name,
        password: hashedPassword,
        email: req.body.email,
        number: req.body.number,
        nik: req.body.nik,
        alamat: req.body.alamat,
      });
      res.status(200).json({
        succes: true,
        message: 'berhasil menambahkan user',
        data: user,
      });
    } catch (err) {
      res.status(400).json({
        succes: false,
        message: err.message,
      });
    }
  },
  // @desc mengambil seluruh data user
  async getAllUsers(req, res) {
    try {
      const user = await User.findAll();

      res.status(200).json({
        succes: true,
        message: 'melihat seluruh user',
        data: user,
      });
    } catch {
      res.status(500).json({
        succes: false,
        message: 'something went wrong',
      });
    }
  },
  // @desc melihat data satu user
  async getUser(req, res) {
    try {
      const user = await User.findByPk(req.params.id);

      if (!user) {
        return res.status(404).json({
          succes: false,
          message: 'user tidak ditemukan',
        });
      }

      res.status(200).json({
        succes: true,
        message: `melihat user ke-${req.params.id}`,
        data: user,
      });
    } catch (err) {
      res.status(400).json({
        succes: false,
        message: err.message,
      });
    }
  },
  // @desc update data user
  async updateUser(req, res) {
    try {
      const user = await User.findByPk(req.params.id);

      if (!user) {
        return res.status(404).json({
          succes: false,
          message: 'user tidak ditemukan',
        });
      }

      if (req.body.password) {
        await user.update(getHashedPassword(req.body.password));
        res.status(200).json({
          succes: true,
          message: 'data user berhasil diperbaharui',
        });
      } else {
        await user.update(req.body);
        res.status(200).json({
          succes: true,
          message: 'password berhasil diperbaharui',
          data: user,
        });
      }
    } catch (err) {
      res.status(400).json({
        succes: false,
        message: err.message,
      });
    }
  },
  // @desc update password user
  // async updatePwUser(req, res) {
  //   try {
  //     const user = await User.findByPk(req.params.id);

  //     if (!user) {
  //       return res.status(404).json({
  //         succes: false,
  //         message: 'user tidak ditemukan',
  //       });
  //     }

  //     await user.update(getHashedPassword(req.body.password));

  //     res.status(200).json({
  //       succes: true,
  //       message: 'password user berhasil diperbaharui',
  //       data: user,
  //     });
  //   } catch (err) {
  //     res.status(400).json({
  //       succes: false,
  //       message: err.message,
  //     });
  //   }
  // },
  // @desc memhapus data user
  async deleteUser(req, res) {
    try {
      const user = await User.findByPk(req.params.id);

      if (!user) {
        return res.status(404).json({
          succes: false,
          message: 'user tidak ditemukan',
        });
      }

      await user.destroy();

      res.status(200).json({
        succes: true,
        message: 'user berhasil terhapus',
      });
    } catch (err) {
      res.status(400).json({
        succes: false,
        message: err.message,
      });
    }
  },
  // @desc memhapus data user
  async loginUser(req, res) {
    try {
      const { email, password } = req.body;
      const hashedPassword = getHashedPassword(password);

      const user = await User.findOne({
        where: {
          email,
          password: hashedPassword,
        },
      });
      if (!user) {
        res.status(402).json({
          success: false,
          message: 'email atau password anda salah',
        });
      } else {
        res.status(200).json({
          success: true,
          message: 'Anda berhasil login',
          data: user,
        });
      }
    } catch {
      res.status(500).json({
        succes: false,
        message: 'something went wrong',
      });
    }
  },
};
