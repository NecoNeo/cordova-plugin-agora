var exec = require('cordova/exec');

function Agora() {}

Agora.prototype.hello = function() {
    console.log('hola');
};

Agora.prototype.joinChannel = function(channelId) {
    exec(function(result) {}, function(err) {}, 'Agora', 'joinChannel', [channelId]);
};

module.exports = new Agora();
