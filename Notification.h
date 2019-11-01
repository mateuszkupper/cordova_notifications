/********* Echo.h Cordova Plugin Header *******/

#import <Cordova/CDVPlugin.h>
#import <UserNotifications/UserNotifications.h>

@interface Notification : CDVPlugin

- (void)notification:(CDVInvokedUrlCommand*)command;

@end
