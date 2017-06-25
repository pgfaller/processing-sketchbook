var express = require('express');
var router = express.Router();
var fs = require('fs');

/* GET home page. */
router.get('/', function(req, res, next) {
  var sketches = ['images/hello.pde'];
  fs.readdir('public/images', function(err, list) {
    if (err) {
      next(err);
    }
    else {
      var regex = '.*\\.pde';
      sketches = list.filter(function(item) {
        return item.match(regex);
      });
      // sketches = sketches.map(function(item) {
      //   return '/sketch/'+item;
      // });
    }
    res.render('index', { title: 'ProcessingJS Sketchbook', list: sketches });
  });
});

module.exports = router;
