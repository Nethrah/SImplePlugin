'use strict';

var exec = require('cordova/exec');

var encryption = {
  getUserKeyValue: function(userId, success, failure) {
    exec(success, failure, ‘encryption’, 'getUserKeyValue’, [userId]);
  },

  createEncryptedKeyValuePair: function(userId, success, failure) {
    exec(success, failure, 'encryption', 'createEncryptedKeyValuePair', [userId]);
  },

  deEncryptedPrivateKeyValue: function(userId, encryptedPrivateKeyValue, newUserPublicKey, success, failure) {
    exec(success, failure, 'encryption', ‘deEncryptedPrivateKeyValue’, [userId, encryptedPrivateKeyValue, newUserPublicKey]);
  },

  decryptedMsg: function(userId, encryptedMessage, encryptedPrivateKeyValue, success, failure) {
    exec(success, failure, 'encryption', 'decryptedMsg’, [userId, encryptedMessage, encryptedPrivateKeyValue]);
  }
};

module.exports = encryption;