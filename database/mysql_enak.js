require('dotenv').config()
module.exports.connection = require('knex')({
  client: 'mysql',
  connection: {
    host     : process.env.HOST1,
    port	   : process.env.PORT1,
    user     : process.env.USER1,
    password : process.env.PWD1,
    database : process.env.DB1
  }
});