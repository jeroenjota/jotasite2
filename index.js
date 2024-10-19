const express = require("express")
const app = express()
const path = require('path')
const port = 3000
const bodyParser = require('body-parser')
const db = require('./database')


app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

app.use(express.json());

app.set('view engine', 'pug')
app.set('views', path.join(__dirname, "/views"))
app.use(express.static(path.join(__dirname, 'public')))

// routes
app.get("/home", (req, res) => {
  let locals = { title: "Home" }
  res.render('index', locals)
})

app.get("/about", (req, res) => {
  let locals = { title: "Jeroen" }
  res.render('aboutme', locals)
})


app.get("/conditions", (req, res) => {
  let locals = { title: "Voorwaarden" }
  res.render('voorwaarden', locals)
})

app.get("/", (req, res) => {
  // open de recordsets tours en fotos 
  // tours is een tabel
  let qryTours = "select t.id, t.tournaam, t.duur, t.omschrijving, t.soort, t.tblLink "
  qryTours += " from tours t where actief = true order by t.volgorde"
  db.all(qryTours, (err, tours) => {
    if (err) throw err;
    // tourfotos is een view 
    let qryFotos = "select * from tourfotos"
    db.all(qryFotos, (err, fotos) => {
      if (err) throw err;
      let locals = {
        title: "Tours",
        tours: tours,
        fotos: fotos
      }
      res.render('tours', locals)
    })
  })
})


app.get("*", (req, res) => {
  res.send("<h1>Pagina onbekend<h1>")
})

// server
app.listen(port, () => {
  console.log("Server gestart op poort " + port)
})

