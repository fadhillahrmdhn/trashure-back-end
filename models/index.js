const Organik = require('./organikModel');
const Anorganik = require('./anorganikModel');
const Tips = require('./tipsModel');

const model = {};

model.organik = Organik;
model.anorganik = Anorganik;
model.tips = Tips;

module.exports = model;
