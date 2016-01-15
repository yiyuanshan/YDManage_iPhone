//
//  YDFindMainVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/15.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDFindMainVC.h"
#import "YDInfoMainVC.h"

@interface YDFindMainVC ()

@end

@implementation YDFindMainVC

@synthesize navigationController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"发现";
}
-(IBAction)didPressedGoto:(id)sender
{

    YDInfoMainVC *vc = (YDInfoMainVC *)[self initWithVCName:@"YDInfoMainVC" storyboardName:@"Info"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
