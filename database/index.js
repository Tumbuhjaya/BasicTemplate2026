
/*
 * GET home page.
 */
// import database
require('dotenv').config()
 var mysql      = require('mysql');

module.exports.connection = mysql.createPool({
  host     : process.env.HOST1,
  port	   : process.env.PORT1,
  user     : process.env.USER1,
  password : process.env.PWD1,
  database : process.env.DB1
});
