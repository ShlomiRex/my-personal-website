var mysql = require('mysql'); 
var crypto = require('crypto'); //Passwords

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database : 'my-personal-website',
    insecureAuth : true
    
  });

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected to MySQL database!");
});

module.exports = {
    con,
    crypto,
    mysql
};
