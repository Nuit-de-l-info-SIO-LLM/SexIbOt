const DISCORD = require("discord.js");
const dbConnexion = require("./db.js");
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
        message.reply("WIP !") // TODO : Faire la commande
    } else if(message.content === "/help") {
        message.reply("**Liste des commandes :**\n /demand {user} {type} {card}\n /help \n /creePartie")
    } else if(message.content === "/creePartie") {
        message.reply("WIP !") // TODO : A faire
    }
})