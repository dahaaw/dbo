exports.reSuccess = (res, data, meta) => res.status(200).json({
    success: true,
    data, meta
});

exports.reSuccessMsg = (res, message) => res.status(200).json({
    success: true,
    message
})

exports.resFail = (res, message) => res.status(400).json({
    success: false, 
    message
});

exports.resError = (res, message, error) => res.status(500).json({
    success: false, 
    message, error
})

exports.resEmpty = (res) => res.status(200).json({
    success: false,
    message: `no data`
})