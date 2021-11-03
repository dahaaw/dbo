const jwt = require("jsonwebtoken");
const { resFail } = require("../helper/response");

module.exports = (req, res, next) => {
    const { authorization } = req.headers;

    let bearer;
    // parse bearer
    if ( authorization && req.headers.authorization.split(" ")[0] === "Bearer" ) bearer = authorization.split(" ")[1]

    const token = bearer || req.cookies.token;

    if(!token) return resFail(res, 'not authenticated');

    try {
        const decoded = jwt.verify(token, process.env.KEY);
        req.user = decoded;
    } catch (err) {
        return resFail(res, err.message);
    }
    
    return next();
};