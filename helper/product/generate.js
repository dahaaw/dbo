require('dotenv').config();
const {product} = require('../../models');
const totalProduct = 100;

product.findOne()
.then(d => {
    if(d) return console.log('product already exist');

    const newProducts = [];
    for(let i = 1; i < totalProduct; i++) {
        const random = Math.random().toString(36).substr(2, 5);
        newProducts.push({
            name: `Product ${random}`,
            description: `description ${random}`,
            price: parseInt(`${i}0000`)
        })
    }

    product.bulkCreate(newProducts);
    console.log(`${totalProduct} product created`);
})
.catch(e => console.log(e))