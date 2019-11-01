exports.notification = function () {
	cordova.exec(function(winParam) {},
             function(error) {},
             "Notification",
             "notification",
             []);
};
