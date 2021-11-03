const {Router} = require('express');
const router = Router();
const {
    add,
    get,
    detail,
    update,
    destroy
} = require('../controllers/customers');

router.get("/:id", detail);
router.get("/", get);
router.post("/", add);
router.put("/:id", update);
router.delete("/:id", destroy);

module.exports = router;