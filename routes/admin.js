const {Router} = require('express');
const router = Router();

router.get("/", (req, res) => {
    res.json({name: 'hamdan'})
});

module.exports = router;