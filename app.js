require('dotenv').config();
const express = require('express');
const {Router} = express;
const routes = require('./routes');
const morgan = require('morgan');

const app = express();
const {PORT} = process.env;

app.use(morgan('dev'));

// ROUTER
routes(app);

app.listen(PORT, (error) =>{
    if(error) return console.log("Error occured, server can't start", error);
    console.log("Server Running on port "+ PORT)
});