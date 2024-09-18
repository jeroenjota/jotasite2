const mysql = require('mysql');
require('dotenv').config()

const mySQL = mysql.createConnection({
  //pifiles
  host: process.env.dbHost,
  user: process.env.dbUser,
  password: process.env.dbPass,
  database: process.env.dbName
})

mySQL.connect((err) => {
  if (err) {
    console.log("Fout bij verbinding database", err);
    return;
  }
  console.log('Database verbonden');
})

module.exports = mySQL