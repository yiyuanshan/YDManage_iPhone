//
//  YDFindBaseVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/15.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDFindBaseVC.h"

@interface YDFindBaseVC ()

@end

@implementation YDFindBaseVC

- (void)viewDidLoad
{
    [super viewDidLoad];

}
-(UIViewController *)initWithVCName:(NSString *)vcName
{
    return [[UIStoryboard  storyboardWithName:@"Find" bundle:nil] instantiateViewControllerWithIdentifier:vcName];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
