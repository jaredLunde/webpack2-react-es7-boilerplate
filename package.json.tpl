{
  "name": "{{PKG_NAME}}",
  "version": "0.1.0-alpha.0",
  "main": "index.js",
  "private": true,
  "dependencies": {
    "react": "^15.4.2",
    "react-addons-shallow-compare": "^15.4.2",
    "react-dom": "^15.4.2"
  },
  "devDependencies": {
    "webpack2-react-es7-boilerplate": "^0.1.10"
  },
  "repository": {
    "type": "git",
    "url": ""
  },
  "scripts": {
    "start": "cross-env NODE_ENV=development node server.js",
    "build": "npm run build:es5 && npm run build:es6",
    "build:es5": "cross-env NODE_ENV=cli babel ./lib --out-dir es5",
    "build:es6": "cross-env NODE_ENV=production babel ./lib --out-dir ./",
    "build:dist": "cross-env NODE_ENV=production webpack --config webpack.config.js",
    "watch:es5": "cross-env NODE_ENV=cli babel ./lib -w --out-dir es5",
    "watch:es6": "cross-env NODE_ENV=production babel ./lib -w --out-dir ./",
    "start:cli": "npm run node ./lib/index.js",
    "node": "cross-env NODE_ENV=cli babel-node",
    "prepublish": "npm run build"
  },
  "analyze": true,
  "license": "MIT"
}
