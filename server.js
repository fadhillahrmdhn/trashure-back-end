/* eslint-disable no-console */
const express = require('express');
require('dotenv').config();
const bodyParser = require('body-parser');
const registerRoutes = require('./routes/registerRoutes');
const loginRoutes = require('./routes/loginRoutes');
const userRoutes = require('./routes/userRoutes');
const sequelize = require('./utils/database');
const organikRoutes = require('./routes/organikRoutes');
const anorganikRoutes = require('./routes/anorganikRoutes');
const tipsRoutes = require('./routes/tipsRoutes');

require('./models/userModel');
require('./models/index');

const app = express();

// To parse cookies from the HTTP Request
app.use(bodyParser.urlencoded({ extended: true }));

// menggunakan ejs template engine
app.set('view engine', 'ejs');

// parsing body request
app.use(express.json());

// routing
app.use('/register', registerRoutes);
app.use('/login', loginRoutes);
app.use('/user', userRoutes);
// API untuk mengembalikan data sampah anorganik
app.use('/anorganik', anorganikRoutes);

// API untuk mengembalikan data sampah organik
app.use('/organik', organikRoutes);

// API untuk mengembalikan data tips
app.use('/tips', tipsRoutes);

// check in database
console.log('coba"');
sequelize
  .authenticate()
  .then(() => {
    console.log('database berhasil disambungkan');
    // starting server and
    const PORT = process.env.PORT || 6845;
    app.listen(PORT, console.log(`server running in ${process.env.NODE_ENV} mode port ${PORT}`));
  })
  .catch(() => {
    console.log('database gagal disambungkan');
  });
