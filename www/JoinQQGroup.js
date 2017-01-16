var cordova = require('cordova');

var JoinQQGroup = function () {
};

JoinQQGroup.prototype.open = function (commandJson, success, error) {
  cordova.exec(success, error, 'JoinQQGroup', 'open', [commandJson]);
}

JoinQQGroup.prototype.openWechat = function (commandJson, success, error) {
  cordova.exec(success, error, 'JoinQQGroup', 'openWechat', [commandJson]);
}

var JoinQQGroup = new JoinQQGroup();
module.exports = JoinQQGroup;
