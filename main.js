const DISCORD = require("discord.js");
const dbConnexion = require("./db.js");
import {SQLQuery} from 'db.js';
const BOT = new DISCORD.Client({intents: 3276799});
const token = require("./SexIbOt/config.json");

BOT.login(token)

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
        vart = s.split(" ");
        if (vart.length < 4) {
            message.channel.send("Il manque des arguments");
        } else if (vart.length > 4) {
            message.channel.send("Trop d'arguments");
        } else {
            // requêteSQL("SELECT ")
            if(message.author.id === vart[2] || message.author.username === vart[2]) {
                message.channel.send("Vous n'avez pas le droit de faire cette commande sur vous...");
            } else if(vart[2].id === resultQuery || vart[2] === resultQuery) { // TODO : ResultQuery est une variable qui contient l'id de la personne qui a fait la demande
                if(vart[3] === resultQueryType) { // TODO : ResultQueryType est une variable qui contient le type de carte, il doit correspondre.
                    if(vart[4] === resultQueryEnfant){
                        message.channel.send("Le joueur demande la carte : " + vart[4] + " pour la famille : " + vart[3] + " au joueur : " + vart[2]);
                        if(resultQueryCarte === (vart[3]+"+"+vart[4])){ // TODO : Si l'utilisateur a la carte que le joueur a demandé, alors il doit lui donner.
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
            } 
        }
    } else if(message.content === "/help") {
        message.reply("**Liste des commandes :**\n /demand {user} {type} {card}\n /help \n /creePartie")
    } else if(s.startsWith("/creePartie")) {
        message.reply("WIP !") // TODO : A faire
    } else if(s.startsWith("/afficheCarte")) {
        afficheCarte(message)
    }
})

function afficheCarte(message) {
    message.channel.send("Voici vos cartes :")
    message.channel.send("https://cdn.discordapp.com/attachments/1047875519787585598/1047999111619674203/gonorrhee-8.jpg")
}
function requêteSQL(query) {
    return dbConnexion.SQLQuery(query);
}