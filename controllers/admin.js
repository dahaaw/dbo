const bcrypt = require('bcryptjs');
const {admin} = require('../models');
const {resFail, reSuccess, reSuccessMsg, resError} = require('../helper/response');
 
module.exports.add = async (req, res) =>{
    let {username, password} = req.body;
    // required
    if(!username || !password) return resFail(res, 'all input required');

    // check
    const exist = await admin.findOne({where: {username}});
    if(exist) return resFail(res, `username already used`);

    // encrypt
    password = await bcrypt.hash(password, 10);

    // add 
    admin.create({
        username,
        password
    })
    .then(d => reSuccessMsg(res, 'admin created'))
    .catch(e => resError(res, `error while creating admin`, e));
}