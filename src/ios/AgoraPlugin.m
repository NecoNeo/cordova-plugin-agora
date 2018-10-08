#import "AgoraPlugin.h"

@implementation AgoraPlugin

-(void) pluginInitialize
{
    // init
}

-(void) presentChatRoom:(CDVInvokedUrlCommand*)command
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"PluginView" bundle:nil];
    ChatRoomViewController* chatRoomVC = (ChatRoomViewController*)[sb instantiateViewControllerWithIdentifier:@"ChatRoomViewController"];
    [self.viewController presentViewController:chatRoomVC animated:YES completion:nil];
}

@end
