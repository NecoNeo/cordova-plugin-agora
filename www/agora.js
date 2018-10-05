var exec = require('cordova/exec');

function Agora() {}

Agora.prototype.hello = function() {
    console.log('hola');
};

module.exports = new Agora();
