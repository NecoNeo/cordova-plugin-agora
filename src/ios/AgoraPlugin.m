#import "AgoraPlugin.h"
#import "AgoraRtcEngineKit.framework/Headers/AgoraRtcEngineKit.h"

@interface AgoraPlugin()
{}

@end

@implementation AgoraPlugin

-(void)pluginInitialize
{
    // do nothing
}

-(void)joinChannel:(CDVInvokedUrlCommand*)command
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"PluginView" bundle:nil];
    ChatRoomViewController* chatRoomVC = (ChatRoomViewController*)[sb instantiateViewControllerWithIdentifier:@"ChatRoomViewController"];
    NSString *channelId = [[command arguments] objectAtIndex:0];
    [chatRoomVC setChannelId:channelId];
    NSUInteger uid = [[[command arguments] objectAtIndex:1] intValue];
    [chatRoomVC setSelfUid:uid];
    [self.viewController presentViewController:chatRoomVC animated:YES completion:nil];
}

#pragma mark - private methods


@end
