const {Router} = require('express');
const router = Router();
const {
    add,
    get,
    detail
} = require('../controllers/order');

router.get("/", get);
router.get("/:id", detail);
router.post("/", add);

module.exports = router;