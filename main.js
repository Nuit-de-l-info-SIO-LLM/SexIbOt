const DISCORD = require("discord.js")
const BOT = new DISCORD.Client({intents: 3276799})
const CONFIG = require("./token")


BOT.login(CONFIG.token)

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
            if(message.author.id === vart[2] || message.author.username === vart[2]) {
                message.channel.send("Vous n'avez pas le droit de faire cette commande sur vous...");
            } else if(vart[2].id === resultQuery || vart[2] === resultQuery) { // TODO : ResultQuery est une variable qui contient l'id de la personne qui a fait la demande
                if(vart[3] === resultQueryType) { // TODO : ResultQueryType est une variable qui contient le type de carte, il doit correspondre.
                    if(vart[4] === resultQueryEnfant){
                        message.channel.send("Le joueur demande la carte : " + vart[4] + " pour la famille : " + vart[3] + " au joueur : " + vart[2]);
                    }
                } else {
                    message.channel.send("Vous avez écrit de la merde");
                }
            } 
        }
    } else if(message.content === "/help") {
        message.reply("**Liste des commandes :**\n /demand {user} {type} {card}\n /help \n /creePartie")
    } else if(s.startsWith("/creePartie")) {
        message.reply("WIP !") // TODO : A faire
    }
})