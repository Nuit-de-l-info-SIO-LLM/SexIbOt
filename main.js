const DISCORD = require("discord.js");
// const dbConnexion = require("./db.js");
// import {SQLQuery} from 'db.js';
const BOT = new DISCORD.Client({intents: 3276799});
const token = require("./SexIbOt/config.json").token;
BOT.login(token)
const host = require("./SexIbOt/config.json").host;
const username = require("./SexIbOt/config.json").username;
const password = require("./SexIbOt/config.json").password;
const mysql = require("mysql");
// const db = mysql.createConnection({   host: host,   user: username,   password: password });

const db = mysql.createConnection({
    host: host,
    user: username,
    password: password,
    database: "SexIbOt"
});
db.connect(function(err) {   if (err) throw err;   
console.log("Connecté à la base de données MySQL!"); });
selectSQL("USE SexIbOt;");

// QUAND LE BOT DEMARRE
BOT.on("ready", () => {
    console.log(`Bot is ready! Logged in as ${BOT.user.tag}!`)
})

// QUAND LE BOT RECOIT UN MESSAGE
BOT.on("messageCreate", (message) => {
    if(message.author.bot){
        return;
    }
    let s = message.content;
    if ( s.startsWith("/demande") ) { // TODO : Faire un like
        let vart = s.split(" ");
        if (vart.length < 4) {
            message.channel.send("Il manque des arguments");
        } else if (vart.length > 4) {
            message.channel.send("Trop d'arguments");
        } else {
            resultQuery = selectSQL("SELECT count(id_utilisateur) FROM utilisateur WHERE id_utilisateur like '"+vart[1]+"';");
            console.log(resultQuery);
            if(message.author.id === vart[2] || message.author.username === vart[2]) {
                message.channel.send("Vous n'avez pas le droit de faire cette commande sur vous...");
            } else if(vart[2].id === resultQuery || vart[2] === resultQuery) { // ResultQuery est une variable qui contient l'id de la personne visé
                resultQueryType = selectSQL("SELECT type_carte FROM carte WHERE id_carte = \""+vart[3]+"\";");
                if(vart[3] === resultQueryType) { // ResultQueryType est une variable qui contient le type de carte, il doit correspondre.
                    resultQueryEnfant = selectSQL("SELECT id_carte FROM carte WHERE type_carte = "+vart[3]+" AND id_utilisateur = "+message.author.id+");");
                    if(vart[4] === resultQueryEnfant){
                        message.channel.send("Le joueur demande la carte : " + vart[4] + " pour la famille : " + vart[3] + " au joueur : " + vart[2]);
                        resultQueryCarte = count(selectSQL("SELECT id_carte FROM carte WHERE femille = \""+vart[4]+"\" AND id_utilisateur = \""+vart[2]+"\";"));
                        if(resultQueryCarte === 1){ // Si l'utilisateur a la carte que le joueur a demandé, alors il doit lui donner.
                            // TODO : Donner la carte a l'utilisateur l'ayant demandé et retiré la carte de la main du joueur visé.
                        } else {
                            message.channel.send("Le joueur ciblé n'a pas la carte demandé.");
                        }
                    } else{
                        message.channel.send("La carte n'existe pas.");
                    }
                } else {
                    message.channel.send("Le type n'existe pas.");
                }
            } else {
                message.channel.send("Le joueur n'existe pas.");
            }
        }
    } else if(message.content === "/help") {
        message.reply("**Liste des commandes :**\n /demand {user} {type} {card}\n /help \n /creePartie")
    } else if(s.startsWith("/creePartie")) {
        message.reply("WIP !") // TODO : A faire
    } else if(s.startsWith("/afficheCarte")) {
        afficheCarte(message)
    } else if(s.startsWith("/joinGame")) {
        insertSQL("INSERT INTO utilisateur (id_utilisateur, listcarte) VALUES ("+message.author.id+", \""+"null"+"\");");
    }
})

function afficheCarte(message) {
    message.channel.send("Voici vos cartes :")
    message.channel.send("https://cdn.discordapp.com/attachments/1047875519787585598/1047999111619674203/gonorrhee-8.jpg")
}
function insertSQL(query) {
    return db.query(query);
}
function selectSQL(query){
    db.connect(function(err) {
        //if (err) throw err;
        db.query(query, function (err, result, fields) {
          if (err) throw err;
          //console.log(result);
          return result;
        });
      });
}
