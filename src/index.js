require('./styles/main.css');
require('./index.html');

var Elm = require('./App.elm');
var mountNode = document.getElementById('root');

var app = Elm.Main.embed(mountNode);
