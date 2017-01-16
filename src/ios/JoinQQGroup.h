#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>

@interface JoinQQGroup : CDVPlugin

- (void)open:(CDVInvokedUrlCommand *)command;
- (void)openWechat:(CDVInvokedUrlCommand *)command;

@end
