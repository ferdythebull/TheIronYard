// get filesystem module
var fs = require('fs');
// read file async and convert to string
var doc = fs.readFile(process.argv[2], 'utf-8', function(err, data) {
  // if err log object to console and exit function
  if (err) return console.log(err);
  // count the lines by converting the string
  // to array and getting the length
  // and subtracting 1
  var lines = data.split('\n').length - 1;
  console.log(lines);
});