#import "encryption.h"

@implementation encryption

- (void)_ensureKeyValuePair:(NSString *)userId {
    // if there is not already a key pair

}

- (NSString *)_getPublicKeyValue:(NSString*)userId {
    [self _ensureKeyPair:userId];
    return @"publickeyvalue";
}

- (NSString *)_getPrivateKeyValue:(NSString*)userId {
    [self _ensureKeyPair:userId];
    return @"privatekeyvalue";
}

- (void)getUserKeyValue:(CDVInvokedUrlCommand*)command {
    NSString *userId = [command.arguments objectAtIndex:0];

    // If we've already created the key
    NSString *userKeyValue = [self _getPublicKeyValue:userId];

    // Return the key
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:userKey];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)createEncryptedKeyValuePair:(CDVInvokedUrlCommand*)command {
    NSString *userId = [command.arguments objectAtIndex:0];

    // Create a new key pair

    // Stick them in an array
    NSArray *data = @[userId, @"Yes"];

    // Return the key pair
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:data];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)deEncryptedPrivateKeyValue:(CDVInvokedUrlCommand*)command {
    NSString *userId = [command.arguments objectAtIndex:0];

  
    NSString *reEncryptedKey = @"Decrypted key";
   
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:reEncryptedKey];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)decryptedMsg:(CDVInvokedUrlCommand*)command {
//    NSString *userId = [command.arguments objectAtIndex:0];

    NSString *decryptedMsg = @"Decrypted message !";

    // Return the decrypted message
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:decryptedMsg];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
