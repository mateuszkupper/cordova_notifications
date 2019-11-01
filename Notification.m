
/********* Echo.m Cordova Plugin Implementation *******/

#import "Notification.h"
#import <Cordova/CDVPlugin.h>
#import <UserNotifications/UserNotifications.h>

@implementation Notification

- (void)notification:(CDVInvokedUrlCommand*)command
{
    /*CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];*/

    UNMutableNotificationContent* content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    NSDateComponents* date = [[NSDateComponents alloc] init];
    date.hour = 10;
    date.minute = 0;
    UNCalendarNotificationTrigger* trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    date = [[NSDateComponents alloc] init];
    date.hour = 10;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    // Create the request object.
    UNNotificationRequest* request = [UNNotificationRequest
                                      requestWithIdentifier:@"MorningAlarm" content:content trigger:trigger];

    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    date = [[NSDateComponents alloc] init];
    date.hour = 14;
    date.minute = 0;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    date = [[NSDateComponents alloc] init];
    date.hour = 14;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    // Create the request object.
    request = [UNNotificationRequest
                                      requestWithIdentifier:@"MorningAlarm" content:content trigger:trigger];

    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    date = [[NSDateComponents alloc] init];
    date.hour = 18;
    date.minute = 0;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    date = [[NSDateComponents alloc] init];
    date.hour = 18;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    // Create the request object.
    request = [UNNotificationRequest
                                      requestWithIdentifier:@"MorningAlarm" content:content trigger:trigger];

    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    date = [[NSDateComponents alloc] init];
    date.hour = 22;
    date.minute = 0;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    
    // Configure the trigger for a 7am wakeup.
    date = [[NSDateComponents alloc] init];
    date.hour = 22;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    // Create the request object.
    request = [UNNotificationRequest
                                      requestWithIdentifier:@"MorningAlarm" content:content trigger:trigger];

		}

@end
