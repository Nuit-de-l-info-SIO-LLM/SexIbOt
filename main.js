const DISCORD = require("discord.js")
const BOT = new DISCORD.Client({intents: 3276799})
const CONFIG = require("./config")

BOT.login(CONFIG.token)

// QUAND LE BOT DEMARRE
BOT.on("ready", () => {
    console.log(`Bot is ready! Logged in as ${BOT.user.tag}!`)
})