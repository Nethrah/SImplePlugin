#import <Cordova/CDVPlugin.h>
#import <Cordova/CDVInvokedUrlCommand.h>

@interface encryption : CDVPlugin

- (void)getUserKeyValue:(CDVInvokedUrlCommand*)command;

- (void)createEncryptedKeyValuePair:(CDVInvokedUrlCommand*)command;

- (void)deEncryptedPrivateKeyValue:(CDVInvokedUrlCommand*)command;

- (void)decryptedMsg:(CDVInvokedUrlCommand*)command;

@end
