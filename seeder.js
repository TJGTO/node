const { seed, seedSQL } = require("./src/helpers/seeder.helper");
const { connect } = require("./src/helpers/db.helper");
const { con } = require("./src/connection");

// connect().then(async () => {
//   await seedSQL();
//   process.exit(0);
// });
con.connect(function (err) {
  seedSQL();
});
