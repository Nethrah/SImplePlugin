/
//  Alert.h

//
//  Created by Nethrah Ayyaswami on 9/26/17.

#import <Cordova/CDVPlugin.h>

#import <Cordova/CDV.h>



@interface Alert : CDVPlugin <UIAlertViewDelegate> {}

- (void)alert:(CDVInvokedUrlCommand*)command;

@end



@interface MyAlertView : UIAlertView {}

@property (nonatomic, copy) NSString* callbackId;

@end
