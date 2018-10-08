//
//  ChatRoomViewController.m
//  HelloCordova
//
//  Created by 布丁丸子酱 on 2018/10/8.
//

#import "ChatRoomViewController.h"

@interface ChatRoomViewController ()

@end

@implementation ChatRoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
