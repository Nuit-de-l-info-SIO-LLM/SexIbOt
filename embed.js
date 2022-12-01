const { EmbedBuilder } = require('discord.js');

const exampleEmbed = new EmbedBuilder()
    .setColor(0x0099FF)
    .setTitle('') // ICI LE NOM DE LA CARTE
    .setAuthor({ name: 'Sexibot', iconURL: ''})
    .setThumbnail('https://i.imgur.com/AfFp7pu.png')
    .addFields({ name: 'Inline field title', value: 'Some value here', inline: true })
    .setImage('https://i.imgur.com/AfFp7pu.png')
    .setTimestamp()
    .setFooter({ text: 'Developper avec ❤ par le BTS SIO de Louise Michel', iconURL: 'https://i.imgur.com/AfFp7pu.png' });

message.reply({ embeds: [exampleEmbed] })