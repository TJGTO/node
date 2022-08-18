var mysql = require("mysql2");

var con = mysql.createConnection({
  database: "codebuddy",
  host: "localhost",
  user: "root",
  password: "1234",
});

module.exports = { con };
