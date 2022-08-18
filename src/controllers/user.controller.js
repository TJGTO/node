const User = require("../schema/user.schema");
const { con } = require("../connection");

module.exports.getUsersWithPostCount = async (req, res) => {
  try {
    //query to find the user and post count
    let query = `SELECT us.*,COUNT(po.id) as posts FROM user us
    LEFT JOIN post po
    ON us.id = po.userId
    GROUP BY us.id`;
    let Paggination = 0,
      LIMIT = 0;
    let TotalPages = 1;

    ///count limit and offset
    if (req.query.page) {
      Paggination = req.query.page;
      LIMIT = req.query.limit ? req.query.limit : 10;
      let offset = (Paggination - 1) * LIMIT;
      query += ` LIMIT ${LIMIT} OFFSET ${offset}`;
    }
    query += ";";

    con.connect(function (err) {
      con.query(
        `SELECT COUNT(*) AS totalCount FROM user;`,
        function (err, result) {
          if (err) throw err;
          console.log(result);
          con.query(query, function (err1, result1) {
            if (err1) throw err1;
            console.log(result1);
            if (LIMIT) {
              TotalPages = Math.ceil(result[0].totalCount / LIMIT);
            }
            ///Set paggination setaild
            let pagginationData = {
              totalDocs: result[0].totalCount,
              limit: LIMIT == 0 ? result[0].totalCount : parseInt(LIMIT),
              page: Paggination == 0 ? 1 : parseInt(Paggination),
              totalPages: Paggination == 0 ? 1 : TotalPages,
              pagingCounter: Paggination == 0 ? 1 : parseInt(Paggination),
              hasPrevPage: Paggination == 1 || Paggination == 0 ? false : true,
              hasNextPage:
                Paggination != 0 && Paggination < TotalPages ? true : false,
              prevPage:
                Paggination == 1 || Paggination == 0
                  ? null
                  : parseInt(Paggination) - 1,
              nextPage:
                Paggination != 0 && Paggination < TotalPages
                  ? parseInt(Paggination) + 1
                  : null,
            };
            res.status(200).json({
              message: "Success",
              data: result1,
              pagination: pagginationData,
            });
          });
        }
      );
    });
  } catch (error) {
    res.send({ error: error.message });
  }
};
