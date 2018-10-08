#import <Cordova/CDVPlugin.h>
#import "ChatRoomViewController.h"

@interface AgoraPlugin : CDVPlugin
// @property (nonatomic, retain) NSString *key;
// @property (nonatomic, retain) AGDChatViewController* chat_instance;
// @property (nonatomic, retain) void (^_completionHandler)(NSString* someParameter);

- (void) presentChatRoom:(CDVInvokedUrlCommand*)command;

@end
