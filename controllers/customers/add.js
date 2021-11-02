const { customers } = require('../../models');
const { Op } = require('sequelize');

module.exports = async (req, res) => {
    const { firstname, lastname, username, password, email, phone } = req.body;

    // check exist
    const exist = await customers.findOne({ 
        where: {
            [Op.or]: [
                {username},
                {email}
            ]
        }
    });
    if(exist) return res.json({msg: 'user already registered'});

    customers.create({
        username, password, email, phone, firstname, lastname
    })

    // validation
    res.json({huhu:"huhu"});
}