const { Sequelize } = require('sequelize');
require('dotenv').config();

const { DATABASE_NAME, DATABASE_USERNAME, DATABASE_PASSWORD } = process.env;

const sequelize = new Sequelize(DATABASE_NAME, DATABASE_USERNAME, DATABASE_PASSWORD, {
  dialect: 'mysql',
  host: process.env.NODE_ENV !== 'production' ? 'localhost' : '0.0.0.0:5000',
  timezone: '+07:00',
});

module.exports = sequelize;
