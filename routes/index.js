const auth = require('./auth');
const admin = require('./admin');
const customers = require('./customers');
const order = require('./order');
const authMW = require('../midleware/auth');


module.exports = (app) => {
    app.use('/auth', auth);
    app.use('/admin', authMW, admin);
    app.use('/customer', authMW, customers);
    app.use('/order', authMW, order);
}