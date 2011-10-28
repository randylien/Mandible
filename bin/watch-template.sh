#!/usr/bin/env node
var args, NodeInterval, ni;
args = process.argv.splice(2);
NodeInterval = require('NodeInterval');

ni = new NodeInterval.Watcher({
    watchFolder: '../src/templates/',
    inputFile: ['../src/index.html', '../src/index_uncompressed.html'],
    replacementString: '@templates@',
    outputFile: ['../assets/index.html', '../assets/index_uncompressed.html']
});

if (args[0] !== '--no-watch'){
   ni.startWatch();
}

