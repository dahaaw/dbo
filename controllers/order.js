const { resFail, resError, reSuccess } = require('../helper/response');
const db = require('../models');
const orderField = ['firstName', 'lastName', 'phone'];

exports.add = async (req, res) => {
    const {customer, product} = req.body;

    if(!customer) return resFail(res, 'customer is required');
    const existCustomer = await db.customers.findByPk(customer);
    if(!existCustomer) return(res, `customer ${id} not found`);
    if(!product) return resFail(res, 'product is required');
    if(!Array.isArray(product)) return resFail(res, 'product must array');
    if(!product.length) return resFail(res, `product can't empty`);

    const orderedProduct = [];
    let total = 0;
    for(const pdk of product){
        if(!pdk.id) return resFail(res, 'product id is required');
        if(!pdk.qty) return resFail(res, 'product qty is required');

        const existProduct = await db.product.findByPk(pdk.id)
        if(!existProduct) return resFail(res, `product with id ${pdk.id} not found`)

        const subtotal = (existProduct.price * pdk.qty);
        total += subtotal;
        orderedProduct.push({
            product: existProduct.id,
            name: existProduct.name,
            description: existProduct.description,
            price: existProduct.price,
            qty: pdk.qty,
            total: subtotal
        })
    }


    const {firstName, lastName, phone} = existCustomer;
    try {
        const dataOrder = await db.orders.create({
            admin: req.user.id,
            customer,
            firstName,
            lastName,
            phone,
            total
        })
        
        orderedProduct.map((v,i) => orderedProduct[i].order = dataOrder.id);
        console.log(JSON.stringify(orderedProduct));

        db.orders_detail.bulkCreate(orderedProduct).catch(e =>console.log(e))

        reSuccess(res, 'order created');

    } catch (e) {
        resError(res, `error while creating order`, e)
    }
}

exports.get = (req, res) => {
    let {search, page = 1, limit = 10, orderBy = 'id', orderType = 'desc'} = req.query;
    limit = parseInt(limit);
    const offset = (parseInt(page) - 1 ) * limit;

    if(orderBy !== 'id' && !orderField.includes(orderBy)) return resFail(res, `orderBy must ${orderField.join(' or ')}`);

    const where = {};
    if(search) where[Op.or] = [
        {firstName: {[Op.like]: `%${search}%`}},
        {lastName: {[Op.like]: `%${search}%`}},
        {phone: {[Op.like]: `%${search}%`}}
    ];

    db.orders.findAll({
        order: [ [orderBy, orderType] ],
        where,
        limit,
        offset
    })
    .then(d => {
        if(!d.length) return resEmpty(res);
        reSuccess(res, d)
    })
    .catch(e => resError(res, 'error while getting orders data', e));
} 

exports.detail = (req, res) => {
    const id = req.params.id;
    if(!id) return resFail(res, `id is required`);

    db.orders.findByPk(id,{
        include:[
            {
                model: db.orders_detail,
                as: 'orders_details',
                attributes: ['name', 'description', 'price', 'qty', 'total']
            }
        ]
    })
    .then(d => {
        if(!d) return resFail(res, `no data found`)
        reSuccess(res, d)
    })
    .catch(e => resError(res, `error while getting detail`, e));
}