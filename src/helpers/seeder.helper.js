const faker = require("faker");
const chalk = require("chalk");
const User = require("../schema/user.schema");
const Post = require("../schema/post.schema");
const { con } = require("../connection");

module.exports.seed = async (log = true) => {
  await User.deleteMany({});
  await Post.deleteMany({});
  if (log) {
    console.log(chalk.green("Connected to database..."));
    console.log(chalk.green("Seeder started..."));
  }

  await Promise.all(
    Array.from(Array(100).keys()).map(async () => {
      const resp = await User.create({
        name: faker.name.firstName(),
      });
      if (log) console.log(chalk.blue("Created user's name: ", resp.name));

      await Promise.all(
        Array.from(Array(2).keys()).map(async () => {
          await Post.create({
            userId: resp._id,
            title: faker.lorem.sentence(),
            description: faker.lorem.paragraph(10),
          });
        })
      );
    })
  );

  if (log) console.log(chalk.green("Seeder completed... Exiting..."));
};

module.exports.seedSQL = async (log = true) => {
  //   if (log) {
  //     console.log(chalk.green("Connected to database..."));
  //     console.log(chalk.green("Seeder started..."));
  //   }

  Array.from(Array(95).keys()).map(async () => {
    con.query(
      `INSERT INTO user (name) VALUES( '${faker.lorem.sentence()}')`,
      function (err, result) {
        if (err) throw err;
        console.log(result.insertId);
        Array.from(Array(2).keys()).map(async () => {
          con.query(`INSERT INTO post (title,description,userId)
            VALUES ('${faker.lorem.sentence()}','${faker.lorem.paragraph(
            10
          )}',${result.insertId})`);
        });
      }
    );
  });

  //   if (log) console.log(chalk.green("Seeder completed... Exiting..."));
};
