# ENcrypt plugin for iOS 


### Cordova

The plugin can be installed via the Cordova command line interface:

* Navigate to the root folder for your phonegap project.
* Run the command:



or if you want to be running the development version,

```sh
cordova plugin add https://github.com/Nethrah/SImplePlugin
```



```js
var encrypt;

document.addEventListener("deviceready", function(){
    encrypt = window.plugins.encrypt;
    ...
});
```

You can get the derived key in hexadecimal format by invoking ``encrypt(onSuccess, onFailure, password, salt, options)``

```js
var key;

encrypt(
    function (res) { key = res; },
    function (err) { key = null },
    'password', 'xxx', {N: 16384}
)
```





