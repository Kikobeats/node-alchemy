'use strict';

var fs         = require('fs');
var path       = require('path');
var AlchemyAPI = require('./../index.js');
var tweets     = require('./tweets.json');
var sampleText = fs.readFileSync(path.resolve('example', 'sample.txt'), 'utf8');

var sampleTweetText = tweets.map(function(tweet) {
  return tweet.text.trim();
}).join('');

var options = {
  key: process.env.API_KEY
};

var alchemy = AlchemyAPI(options);

console.log('Number of chars to send:', sampleText.length);

alchemy.taxonomy.text({
  text: sampleText
}, function(err, body) {
  if (err) throw err;
  console.log(body);
});
