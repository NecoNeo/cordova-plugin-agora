//
//  ChatRoomViewController.m
//
//  Created by 布丁丸子酱 on 2018/10/8.
//

#import "ChatRoomViewController.h"
#import "AgoraRtcEngineKit.framework/Headers/AgoraRtcEngineKit.h"

@interface ChatRoomViewController ()<AgoraRtcEngineDelegate>

@property (nonatomic) AgoraRtcEngineKit *agoraKit;
// views
@property (weak, nonatomic) IBOutlet UIView *localVideo;

@end

@implementation ChatRoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialization];
}

#pragma mark - setups

- (void)initialization {
    NSLog(@"channelId:%@\n", self.channelId);
    [self initAgoraEngine];
    [self setChannelProfile];
    [self setupVideo];
    [self setupLocalVideo];
    [self joinChannel];
}

#pragma mark - main steps

// step 1 - init with appid
- (void)initAgoraEngine {
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"AgoraConfig" ofType:@"plist"];
    NSMutableDictionary *config = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    NSString *appId = [config valueForKey:@"AppId"];
    NSLog(@"AppId: %@\n", appId);
    self.agoraKit = [AgoraRtcEngineKit sharedEngineWithAppId:appId delegate:self];
    NSLog(@"agoraKit inited");
}

// set channel mode
- (void)setChannelProfile {
    [self.agoraKit setChannelProfile:AgoraChannelProfileCommunication];
    NSLog(@"channel profile set");
}

// step 2
- (void)setupVideo {
    [self.agoraKit enableVideo];
    AgoraVideoEncoderConfiguration *config = [[AgoraVideoEncoderConfiguration alloc] initWithSize:AgoraVideoDimension640x360 frameRate:AgoraVideoFrameRateFps15 bitrate:400 orientationMode:AgoraVideoOutputOrientationModeFixedPortrait];
    [self.agoraKit setVideoEncoderConfiguration:config];
    NSLog(@"setup video");
}

// step 3 - setup local video
- (void)setupLocalVideo {
    AgoraRtcVideoCanvas *videoCanvas = [[AgoraRtcVideoCanvas alloc] init];
    videoCanvas.uid = 0;
    videoCanvas.view = self.localVideo;
    videoCanvas.renderMode = AgoraVideoRenderModeHidden;
    [self.agoraKit setupLocalVideo:videoCanvas];
    NSLog(@"setup local video");
}

// step 4 - join channel
- (void)joinChannel {
    NSLog(@"before join channel\n");
    [self.agoraKit joinChannelByToken:nil channelId:self.channelId info:nil uid:self.selfUid joinSuccess:^(NSString *channel, NSUInteger uid, NSInteger elapsed) {
        NSLog(@"JOIN CHANNEL SUCCESS");
    }];
}

// step 5
- (void)rtcEngine:(AgoraRtcEngineKit *)engine didJoinedOfUid:(NSUInteger)uid elapsed:(NSInteger)elapsed {
    AgoraRtcVideoCanvas *videoCanvas = [[AgoraRtcVideoCanvas alloc] init];
    videoCanvas.uid = uid;
//    videoCanvas.view = self.remoteVideo;
    videoCanvas.renderMode = AgoraVideoRenderModeFit;
    [self.agoraKit setupRemoteVideo:videoCanvas];
}

#pragma mark - Navigation

/*

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)dismissView:(id)sender {
    [self.agoraKit leaveChannel:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
