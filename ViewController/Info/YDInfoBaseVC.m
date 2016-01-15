//
//  YDInfoBaseVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/15.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDInfoBaseVC.h"

@interface YDInfoBaseVC ()

@end

@implementation YDInfoBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(UIViewController *)initWithVCName:(NSString *)vcName
{
    return [super initWithVCName:vcName storyboardName:@"Info"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
