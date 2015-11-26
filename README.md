# node-alchemy

<p align="center">
  <br>
  <img src="https://i.imgur.com/9pNHVux.jpg" alt="node-alchemy">
  <br>
</p>

![Last version](https://img.shields.io/github/tag/Kikobeats/node-alchemy.svg?style=flat-square)
[![Dependency status](http://img.shields.io/david/Kikobeats/node-alchemy.svg?style=flat-square)](https://david-dm.org/Kikobeats/node-alchemy)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Kikobeats/node-alchemy.svg?style=flat-square)](https://david-dm.org/Kikobeats/node-alchemy#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/node-alchemy.svg?style=flat-square)](https://www.npmjs.org/package/node-alchemy)
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg?style=flat-square)](https://paypal.me/kikobeats)

> Node/Browser Client to interact with AlchemyAPI.

## Install

```bash
npm install node-alchemy --save
```

If you want to use in the browser (powered by [Browserify](http://browserify.org/)):

```bash
bower install node-alchemy --save
```

and later link in your HTML:

```html
<script src="bower_components/node-alchemy/dist/node-alchemy.js"></script>
```

## Usage

First require the library:

```js
var AlchemyAPI = require('node-alchemy');
```

Minimal configuration:

```js
var meaning = AlchemyAPI({
  key: process.env.API_KEY // API Key. Required.
  secure: true             // HTTPS or HTTPS. Optional, true by default.
  uri: 'custom-uri'        // URI to create the API endpoints. Optional.
});
```

Check the list of [AlchemyAPI endpoints](http://www.alchemyapi.com/api).

```js
var meaning = AlchemyAPI({
  key: process.env.API_KEY
});
```

The library support standard NodeJS callback and Promise workflow as well.

## Examples

See [example.js](https://github.com/Kikobeats/node-alchemy/blob/master/example.js)

## License

MIT © [Kiko Beats](http://www.kikobeats.com)
