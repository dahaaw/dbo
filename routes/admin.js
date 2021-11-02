const {Router} = require('express');
const router = Router();
const auth = require('../midleware/auth');
const {add} = require('../controllers/admin');

router.post("/", auth, add);

module.exports = router;