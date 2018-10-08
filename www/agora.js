var exec = require('cordova/exec');

function Agora() {}

Agora.prototype.hello = function() {
    console.log('hola');
};

Agora.prototype.presentChatRoom = function() {
    exec(function(result) {}, function(err) {}, 'Agora', 'presentChatRoom', []);
};

module.exports = new Agora();
