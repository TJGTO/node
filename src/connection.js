var mysql = require("mysql2");

var con = mysql.createConnection({
  database: "codebuddy",
  host: "localhost",
  user: "root",
  password: "1234",
});

module.exports = { con };
// con.connect(function (err) {
//   if (err) throw err;
//   console.log("Connected!");
// });
// con.connect(function(err) {
//     if (err) throw err;
//     console.log("Connected!");
//     con.query(sql, function (err, result) {
//       if (err) throw err;
//       console.log("Result: " + result);
//     });
//   });
