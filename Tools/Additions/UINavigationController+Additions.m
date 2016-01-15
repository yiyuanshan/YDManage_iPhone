//
//  UINavigationController+Additions.m
//  YDHealth_IPhone
//
//  Created by 单以元 on 15-1-7.
//  Copyright (c) 2015年 苏州联康网络有限公司. All rights reserved.
//

#import "UINavigationController+Additions.h"

@implementation UINavigationController (SYYNavigationController)

-(void)drawNavigationController
{
    NSShadow *titleShadow = [[NSShadow alloc] init];
    titleShadow.shadowOffset = CGSizeMake(0, 0);
    NSDictionary *titleAttrs = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, titleShadow, NSShadowAttributeName, [UIFont boldSystemFontOfSize:17.0],  NSFontAttributeName , nil];
    
    self.navigationBar.titleTextAttributes = titleAttrs;
    
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_navbar_blue_ios7"] forBarPosition:(UIBarPositionTopAttached) barMetrics:(UIBarMetricsDefault)];
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
