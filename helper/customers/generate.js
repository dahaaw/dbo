require('dotenv').config();
const {customers} = require('../../models');
const totalCustomers = 100;

customers.findOne()
.then(d => {
    if(d) return console.log('customers already exist');

    const newcustomerss = [];
    for(let i = 1; i < totalCustomers; i++) {
        const random = Math.random().toString(36).substr(2, 5);
        newcustomerss.push({
            firstName: `f${random}`,
            lastName: `l${random}`,
            phone: `0852105660${i}`,
            gender: i%2 !== 0 ? 'L' : 'P'
        })
    }

    customers.bulkCreate(newcustomerss);
    console.log(`${totalCustomers} customers created`);
})
.catch(e => console.log(e))