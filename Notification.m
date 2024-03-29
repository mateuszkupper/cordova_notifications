
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

		//10:00

	UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
	[center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert)
                      completionHandler:^(BOOL granted, NSError * _Nullable error) {
                          if (!error) {
                              NSLog(@"request authorization succeeded!");
                          }
                      }];


    UNMutableNotificationContent* content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    NSDateComponents* date = [[NSDateComponents alloc] init];
    date.hour = 10;
    date.minute = 0;
    UNCalendarNotificationTrigger* trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
		UNNotificationRequest* request = [UNNotificationRequest requestWithIdentifier:@"1" content:content trigger:trigger];
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}];

		//10:40
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    date = [[NSDateComponents alloc] init];
    date.hour = 10;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
   
		request = [UNNotificationRequest requestWithIdentifier:@"2" content:content trigger:trigger];
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}];

		//14:00
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    date = [[NSDateComponents alloc] init];
    date.hour = 14;
    date.minute = 0;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
 
		request = [UNNotificationRequest requestWithIdentifier:@"3" content:content trigger:trigger];
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}];
  	//14:40 
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    date = [[NSDateComponents alloc] init];
    date.hour = 14;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];

		request = [UNNotificationRequest requestWithIdentifier:@"4" content:content trigger:trigger]; 
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}];

		//18:00
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    
    date = [[NSDateComponents alloc] init];
    date.hour = 18;
    date.minute = 0;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
 
		request = [UNNotificationRequest requestWithIdentifier:@"5" content:content trigger:trigger];
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}]; 

		//18:40  
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    date = [[NSDateComponents alloc] init];
    date.hour = 18;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    request = [UNNotificationRequest
                                      requestWithIdentifier:@"6" content:content trigger:trigger];
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}];		

		//22:00
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Please complete the survey within one hour."
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    date = [[NSDateComponents alloc] init];
    date.hour = 22;
    date.minute = 0;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];

		request = [UNNotificationRequest requestWithIdentifier:@"7" content:content trigger:trigger];
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}];

		//22:40   
    content = [[UNMutableNotificationContent alloc] init];
    content.title = [NSString localizedUserNotificationStringForKey:@"BIS EMA Survey" arguments:nil];
    content.body = [NSString localizedUserNotificationStringForKey:@"Reminder about the survey. Please ignore if already completed."
                                                         arguments:nil];
    content.sound = [UNNotificationSound defaultSound];
    date = [[NSDateComponents alloc] init];
    date.hour = 22;
    date.minute = 40;
    trigger = [UNCalendarNotificationTrigger
                                              triggerWithDateMatchingComponents:date repeats:YES];
    
    request = [UNNotificationRequest
                                      requestWithIdentifier:@"8" content:content trigger:trigger];
		center = [UNUserNotificationCenter currentNotificationCenter];
		[center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
			 if (error != nil) {
				   NSLog(@"%@", error.localizedDescription);
			 }
		}];
		}

@end
