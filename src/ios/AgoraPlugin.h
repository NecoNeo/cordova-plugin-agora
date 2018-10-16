#import <Cordova/CDVPlugin.h>
#import "ChatRoomViewController.h"

@interface AgoraPlugin : CDVPlugin

- (void) joinChannel:(CDVInvokedUrlCommand*)command;

@end
