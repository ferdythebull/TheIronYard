// get the filesystem module
var fs = require('fs');
// create module with dir and filter arguments
var foo = module.exports = function (dir, filter) {
  // reading the directory
  fs.readDir(dir, function(err, data) {
    if (err) return console.log(err);
    data.forEach(function(item) {
      if (item.indexOf(filter) > -1) {
        console.log(item);
      }
    });
  });
};

foo(process.argv[2], process);