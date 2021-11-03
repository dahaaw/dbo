const { customers } = require('../models');
const { resFail, reSuccess, resError, resEmpty } = require('../helper/response');
const { Op } = require('sequelize');
const customersField = ['firstName', 'lastName', 'phone', 'gender'];

exports.add = async (req, res) => {
    const {firstName, lastName, phone, gender} = req.body;
    for(required of customersField) if(!req.body[required]) return resFail(res, `${required} is required`);
    if(gender !== 'L' && gender !== 'P') return resFail(res, `gender must L or P`);

    const exist = await customers.findOne({where: {firstName, lastName, phone}});
    if(exist) return resFail(res, `customers already exist`);

    customers.create({
        firstName, 
        lastName,
        phone,
        gender
    })
    .then(d => reSuccess(res, `customer created`))
    .catch(e => resError(res, `error while creating customers`, e));
};

exports.get = (req, res) => {
    let {search, page = 1, limit = 10, orderBy = 'id', orderType = 'desc'} = req.query;
    limit = parseInt(limit);
    const offset = (parseInt(page) - 1 ) * limit;

    if(orderBy !== 'id' && !customersField.includes(orderBy)) return resFail(res, `orderBy must ${customersField.join(' or ')}`);

    const where = {};
    if(search) where[Op.or] = [
        {firstName: {[Op.like]: `%${search}%`}},
        {lastName: {[Op.like]: `%${search}%`}},
        {phone: {[Op.like]: `%${search}%`}},
        {gender: search},
    ];

    customers.findAll({
        order: [ [orderBy, orderType] ],
        where,
        limit,
        offset
    })
    .then(d => {
        if(!d.length) return resEmpty(res);
        reSuccess(res, d)
    })
    .catch(e => resError(res, 'error while getting customers data', e));
}

exports.detail = (req, res) => {
    const id = req.params.id;
    if(!id) return resFail(res, `id is required`);

    customers.findByPk(id)
    .then(d => {
        if(!d) return resFail(res, `no data found`)
        reSuccess(res, d)
    })
    .catch(e => resError(res, `error while getting detail`, e));
}

exports.update = async (req, res) => {
    const id = req.params.id;
    if(!id) return resFail(res, `id is required`);

    const exist = await customers.findByPk(id);
    if(!exist) return resFail(res, `customers not found`);

    customers.update(req.body, {where:{id}})
    .then(d => reSuccess(res, `customers updated`))
    .catch(e => resError(res,  `error while updatign customers`));
}

exports.destroy = async (req, res) => {
    const id = req.params.id;
    if(!id) return resFail(res, `id is required`);

    const exist = await customers.findByPk(id);
    if(!exist) return resFail(res, `customers not found`);

    customers.destroy({where: {id}})
    .then(d => reSuccess(res, `customer deleted`))
    .catch(e => resError(res, 'error while deleting customer', e));
}