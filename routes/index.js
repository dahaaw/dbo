const Admin = require('./admin');

const Route = (app) => {
    console.log('route')
    app.use('/acim', Admin)
}

module.exports = Route;