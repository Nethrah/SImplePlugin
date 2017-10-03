#import <Cordova/CDVPlugin.h>

@interface encryptPlugin : CDVPlugin

- (void)encrypt:(CDVInvokedUrlCommand*)command;

@property (nonatomic, copy) NSString *callbackId;

@end

