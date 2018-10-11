var exec = require('cordova/exec');

function Agora() {}

Agora.prototype.hello = function() {
    console.log('hola');
};

Agora.prototype.joinChannel = function(channelId, uid) {
    exec(function(result) {}, function(err) {}, 'Agora', 'joinChannel', [channelId, uid]);
};

module.exports = new Agora();
