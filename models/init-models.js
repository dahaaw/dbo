var DataTypes = require("sequelize").DataTypes;
var _admin = require("./admin");
var _customers = require("./customers");
var _log = require("./log");
var _orders = require("./orders");
var _orders_detail = require("./orders_detail");
var _product = require("./product");

function initModels(sequelize) {
  var admin = _admin(sequelize, DataTypes);
  var customers = _customers(sequelize, DataTypes);
  var log = _log(sequelize, DataTypes);
  var orders = _orders(sequelize, DataTypes);
  var orders_detail = _orders_detail(sequelize, DataTypes);
  var product = _product(sequelize, DataTypes);

  log.belongsTo(admin, { as: "user_admin", foreignKey: "user"});
  admin.hasMany(log, { as: "logs", foreignKey: "user"});
  orders.belongsTo(admin, { as: "admin_admin", foreignKey: "admin"});
  admin.hasMany(orders, { as: "orders", foreignKey: "admin"});
  orders.belongsTo(customers, { as: "customer_customer", foreignKey: "customer"});
  customers.hasMany(orders, { as: "orders", foreignKey: "customer"});
  orders_detail.belongsTo(orders, { as: "order_order", foreignKey: "order"});
  orders.hasMany(orders_detail, { as: "orders_details", foreignKey: "order"});
  orders_detail.belongsTo(product, { as: "product_product", foreignKey: "product"});
  product.hasMany(orders_detail, { as: "orders_details", foreignKey: "product"});

  return {
    admin,
    customers,
    log,
    orders,
    orders_detail,
    product,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
