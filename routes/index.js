const auth = require('./auth');
const admin = require('./admin');


module.exports = (app) => {
    app.use('/auth', auth)
    app.use('/admin', admin)
}