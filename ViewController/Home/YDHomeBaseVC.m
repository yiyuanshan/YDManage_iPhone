//
//  YDHomeBaseVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/15.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDHomeBaseVC.h"

@interface YDHomeBaseVC ()

@end

@implementation YDHomeBaseVC

- (void)viewDidLoad
{
    [super viewDidLoad];

}
-(UIViewController *)initWithVCName:(NSString *)vcName
{
    return [super initWithVCName:vcName storyboardName:@"Home"];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
