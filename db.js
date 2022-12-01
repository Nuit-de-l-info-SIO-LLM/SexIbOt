const [host, user, password] = require("./SexIbOt/config.json");
const mysql = require("mysql");
const db = mysql.createConnection({   host: host,   user: user,   password: password });
db.connect(function(err) {   if (err) throw err;   console.log("Connecté à la base de données MySQL!"); });

export function SQLQuery(query){
    return db.query(query)
}

