//
//  ChatRoomViewController.h
//
//  Created by 布丁丸子酱 on 2018/10/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChatRoomViewController : UIViewController

@property (nonatomic) NSString *channelId;

- (void)setChannelId:(NSString*)channelId;

@end

NS_ASSUME_NONNULL_END
