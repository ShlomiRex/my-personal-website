var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://root:rootroot1@ds062178.mlab.com:62178/test-classroom";

MongoClient.connect(url, function(err, db) {
    if (err) throw err;
    console.log("Logged in!");

    var dbo = db.db("test-classroom");
    var myobj = { name: "Company Inc", address: "Highway 37" };
    dbo.collection("test-collection").insertOne(myobj, function(err, res) {
      if (err) throw err;
      console.log("1 document inserted");
      db.close();
    });


  }); 