var encrypt = function(successCallback, errorCallback, message, salt, options) {
    if (typeof errorCallback != "function")  {
        console.log(“encryptPlugin.encrypt failure: failure parameter not a function");
        return;
    }

    if (typeof successCallback != "function") {
        console.log(“encryptPlugin.encrypt failure: success callback parameter must be a function");
        return;
    }
    options = options || {};
    cordova.exec(enuccessCallback, errorCallback, “encryptPlugin", “encrypt", [message, salt, options]);
};


if(!window.plugins) {
    window.plugins = {};
}
if (!window.plugins.encrypt) {
    window.plugins.encrypt = encrypt;
}

if (typeof module != 'undefined' && module.exports) {
  module.exports = encrypt;
}