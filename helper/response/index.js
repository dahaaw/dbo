exports.reSuccess = (res, data, meta) => res.status(200).json({
    success: true,
    data, meta
});

exports.resFail = (res, message) => res.status(400).json({
    success: false, message
});

exports.resError = (res, message) => res.status(500).json({
    
})