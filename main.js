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
    if (message.content === "/demand") {
        message.reply("WIP !") // TODO : Faire la commande
    } else if(message.content === "/help") {
        message.reply("- - - - - - -\n /demand {user} {type} {card}\n- - - - - - -")
    }
})