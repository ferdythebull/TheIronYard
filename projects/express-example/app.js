var express = require( 'express' );
var app = express();
var jade = require('jade');

app.set('view engine', 'jade');

app.get('/', function(req, res) {
  res.render('index');
});

app.listen(3000);