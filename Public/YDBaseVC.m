//
//  YDBaseVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/15.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDBaseVC.h"

@interface YDBaseVC ()

@end

@implementation YDBaseVC

- (void)viewDidLoad
{
    [super viewDidLoad];

}
- (UIViewController *)initWithVCName:(NSString *)vcName storyboardName:(NSString *)storyboardName
{
    return [[UIStoryboard  storyboardWithName:storyboardName bundle:nil] instantiateViewControllerWithIdentifier:vcName];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}



@end
