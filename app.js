require('dotenv').config();
const express = require('express');
const cookieParser = require('cookie-parser');
const morgan = require('morgan');
const routes = require('./routes');

const app = express();
const {PORT} = process.env;

app.use(morgan('dev'));
app.use(cookieParser());
app.use(express.json());

// ROUTER
routes(app);

app.listen(PORT, (error) =>{
    if(error) return console.log("Error occured, server can't start", error);
    console.log("Server Running on port "+ PORT)
});