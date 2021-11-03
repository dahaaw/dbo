var DataTypes = require("sequelize").DataTypes;
var _admin = require("./admin");
var _customers = require("./customers");
var _log = require("./log");
var _product = require("./product");

function initModels(sequelize) {
  var admin = _admin(sequelize, DataTypes);
  var customers = _customers(sequelize, DataTypes);
  var log = _log(sequelize, DataTypes);
  var product = _product(sequelize, DataTypes);


  return {
    admin,
    customers,
    log,
    product,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
