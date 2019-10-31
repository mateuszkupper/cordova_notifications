
/********* Echo.m Cordova Plugin Implementation *******/

#import "Echo.h"
#import <Cordova/CDVPlugin.h>

@implementation Notification

- (void)notification:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Please complete the survey within one hour."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 10    // 14:00 hours
		date.minute = 00
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}


		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Reminder about the survey. Please ignore if already completed."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 10    // 14:00 hours
		date.minute = 40
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}


		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Please complete the survey within one hour."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 14    // 14:00 hours
		date.minute = 00
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}

		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Reminder about the survey. Please ignore if already completed."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 14    // 14:00 hours
		date.minute = 40
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}

		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Please complete the survey within one hour."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 18    // 14:00 hours
		date.minute = 00
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}

		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Reminder about the survey. Please ignore if already completed."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 18    // 14:00 hours
		date.minute = 40
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}

		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Please complete the survey within one hour."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 22    // 14:00 hours
		date.minute = 00
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}

		let content = UNMutableNotificationContent()
		content.title = "BIS EMA Survey"
		content.body = "Reminder about the survey. Please ignore if already completed."

		// Configure the recurring date.
		var dateComponents = DateComponents()
		dateComponents.calendar = Calendar.current

		dateComponents.hour = 22    // 14:00 hours
		date.minute = 40
			 
		// Create the trigger as a repeating event.    
		let trigger = UNCalendarNotificationTrigger(
				     dateMatching: dateComponents, repeats: true)

		// Create the request
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString, 
				        content: content, trigger: trigger)

		// Schedule the request with the system.
		let notificationCenter = UNUserNotificationCenter.current()
		notificationCenter.add(request) { (error) in
			 if error != nil {
				  // Handle any errors.
			 }
		}
		}

@end
