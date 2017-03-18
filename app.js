var express = require('express')
var app = express()
app.listen(2000)

app.engine('html', require('ejs').renderFile)

app.get('/',showIndex)
app.get('/about', showAbout)
app.use(showError)

function showIndex(req,res) {
    res.render('index.html')
} 
s
function showAbout(req,res) {
    res.render('about.html')
}

function showError(req,res) {
    res.render('error.html')
}