var express = require('express');
var router = express.Router();

/* GET sketch. */
router.get('/:sketch', function(req, res, next) {
  res.render('sketch', { title: req.params.sketch });
});

module.exports = router;
