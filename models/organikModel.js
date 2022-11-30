const { DataTypes } = require('sequelize');
const sequelize = require('../utils/database');
const Tips = require('./tipsModel');

const Organik = sequelize.define(
  'Organik',
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    image: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    video: {
      type: DataTypes.STRING,
      allowNull: true,
    },
  },
  {
    underscored: true,
    timestamps: false,
  },
);

Organik.hasMany(Tips);

module.exports = Organik;
