var express = require("express");
var app = express();

app.get("/", (req, res, next) => {
 res.text("Live")
});

app.get("/token", (req, res, next) => {
 res.json(["Tony","Lisa","Michael","Ginger","Food"]);
});

app.listen(80, () => {
 console.log("Server running on port 80");
});