var DataTypes = require("sequelize").DataTypes;
var _admin = require("./admin");
var _customers = require("./customers");

function initModels(sequelize) {
  var admin = _admin(sequelize, DataTypes);
  var customers = _customers(sequelize, DataTypes);


  return {
    admin,
    customers,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
