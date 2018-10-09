#import "AgoraPlugin.h"

@implementation AgoraPlugin

-(void)pluginInitialize
{
    [self initWithAppId];
}

-(void)presentChatRoom:(CDVInvokedUrlCommand*)command
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"PluginView" bundle:nil];
    ChatRoomViewController* chatRoomVC = (ChatRoomViewController*)[sb instantiateViewControllerWithIdentifier:@"ChatRoomViewController"];
    [self.viewController presentViewController:chatRoomVC animated:YES completion:nil];
}

#pragma mark - privates

-(void)initWithAppId
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"AgoraConfig" ofType:@"plist"];
    NSMutableDictionary *config = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    NSString *appId = [config valueForKey:@"AppId"];
    NSLog(@"AppId: %@\n", appId);
}

@end
