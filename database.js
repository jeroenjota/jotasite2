// const mysql = require('mysql');
// require('dotenv').config()

// const mySQL = mysql.createConnection({
//   //pifiles
//   host: process.env.dbHost,
//   user: process.env.dbUser,
//   password: process.env.dbPass,
//   database: process.env.dbName
// })

// mySQL.connect((err) => {
//   if (err) {
//     console.log("Fout bij verbinding database", err);
//     return;
//   }
//   console.log('Database verbonden');
// })

const sqlite3 = require('sqlite3').verbose()
require('dotenv').config()
const dbName = 'jota.db'
const db = new sqlite3.Database('./jota.db', (err) => {
  if (err) {
    console.log(err.message)
  }
  console.log("Connected to database " + dbName)
})

module.exports = db