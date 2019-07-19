var mysql = require('./mysql.js'); 

function register(req, res) {
    //console.log("User trying to register...");
    var username = req.body.username;
    var password = req.body.password;
    var email = req.body.email;

    if(!username || !password || !email) {
        throw "Error: username/password/email null";
    }

    //console.log("Registering user " + username);
    var hash = mysql.crypto.createHash('sha256').update(password).digest('base64');

    var query = "call signup ('" + username + "','" + hash + "','" +  email + "')";
    //console.log(query);
    mysql.con.query(query, function (err, result) {

        

        if (err) {
            if(err.code == "ER_DUP_ENTRY") {
                res.end("Username already exists!");
            }
        }
        else {
            res.end("Hello " + username + " to my website!");
        }
    });
}



module.exports = {
    register
};