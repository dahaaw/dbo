const Admin = require('./admin');

module.exports = (app) => {
    app.use('/admin', Admin)
}