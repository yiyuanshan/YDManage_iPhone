//
//  YDMasterVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/14.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDMasterVC.h"
#import "YDMainVC.h"
#import "YDFindMainVC.h"
#import "YDInfoMainVC.h"
#import "YDMsgMainVC.h"
#import "YDMyMainVC.h"
#import "UINavigationController+Additions.h"

#define RGB(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@interface YDMasterVC ()
{
    YDMainVC *mainVC;
    YDFindMainVC *findMainVC;
    YDInfoMainVC *infoMainVC;
    YDMsgMainVC *msgMainVC;
    YDMyMainVC *myMainVC;
    
    IBOutlet UIView *homeView;
    IBOutlet UIButton *homeBtn;
    IBOutlet UIImageView *homeImageView;
    
    IBOutlet UIView *findView;
    IBOutlet UIButton *findBtn;
    IBOutlet UIImageView *findImageView;
    
    IBOutlet UIView *infoView;
    IBOutlet UIButton *infoBtn;
    IBOutlet UIImageView *infoImageView;
    
    IBOutlet UIView *msgView;
    IBOutlet UIButton *msgBtn;
    IBOutlet UIImageView *msgImageView;
    
    IBOutlet UIView *myView;
    IBOutlet UIButton *myBtn;
    IBOutlet UIImageView *myImageView;
}
@property (strong, nonatomic) YDMainVC *mainVC;
@property (strong, nonatomic) YDFindMainVC *findMainVC;
@property (strong, nonatomic) YDInfoMainVC *infoMainVC;
@property (strong, nonatomic) YDMsgMainVC *msgMainVC;
@property (strong, nonatomic) YDMyMainVC *myMainVC;

@property (nonatomic, strong) UIImageView *contentLineImageView;
@end

@implementation YDMasterVC

@synthesize mainVC;
@synthesize findMainVC;
@synthesize infoMainVC;
@synthesize msgMainVC;
@synthesize myMainVC;
@synthesize contentLineImageView;
@synthesize selectedIndex;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contentLineImageView = [self findHairlineImageViewUnder:self.navigationController.navigationBar];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    [self.navigationController drawNavigationController];
    [self showViewWithIndex:self.selectedIndex];
}
- (UIImageView *)findHairlineImageViewUnder:(UIView *)view
{
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.contentLineImageView.hidden = YES;
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.contentLineImageView.hidden = NO;
}
-(IBAction)didPressedSelectItem:(UIButton *)sender
{
    [self showViewWithIndex:sender.tag];
}
-(void)showViewWithIndex:(NSInteger)index
{
    [self setAllBtnNoSelected];
    
    if (index == 0) {
        index = 1;
    }
    switch (index) {
        case 1:{
            self.title = @"首页";
            self.mainVC.view.hidden = NO;
            self.mainVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-49.0);
            [self.view addSubview:self.mainVC.view];
            [homeBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [homeImageView setImage:[UIImage imageNamed:@"btn_tabstore_blue_selected"]];
        }
            break;
        case 2:{
            self.title = @"发现";
            self.findMainVC.view.hidden = NO;
            self.findMainVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-49.0);
            [self.view addSubview:self.findMainVC.view];
            [findBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [findImageView setImage:[UIImage imageNamed:@"btn_tabdrug_blue_selected"]];
        }
            break;
        case 3:{
            self.title = @"资讯";
            self.infoMainVC.view.hidden = NO;
            self.infoMainVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-49.0);
            [self.view addSubview:self.infoMainVC.view];
            [infoBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [infoImageView setImage:[UIImage imageNamed:@"btn_tabinfo_blue_selected"]];
        }
            break;
        case 4:{
            self.title = @"消息";
            self.msgMainVC.view.hidden = NO;
            self.msgMainVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-49.0);
            [self.view addSubview:self.msgMainVC.view];
            [msgBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [msgImageView setImage:[UIImage imageNamed:@"btn_tabmsg_blue_selected"]];
        }
            break;
        case 5:{
            self.title = @"我";
            self.myMainVC.view.hidden = NO;
            self.myMainVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-49.0);
            [self.view addSubview:self.myMainVC.view];
            [myBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [myImageView setImage:[UIImage imageNamed:@"btn_tabme_blue_selected"]];
        }
            break;
        default:
            break;
    }
}
-(void)setAllBtnNoSelected
{
    
    self.mainVC.view.hidden = YES;
    [homeBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [homeImageView setImage:[UIImage imageNamed:@"btn_tabstore_gray_normal"]];
    
    self.findMainVC.view.hidden = YES;
    [findBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [findImageView setImage:[UIImage imageNamed:@"btn_tabdrug_gray_normal"]];
    
    self.infoMainVC.view.hidden = YES;
    [infoBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [infoImageView setImage:[UIImage imageNamed:@"btn_tabinfo_gray_normal"]];
    
    self.msgMainVC.view.hidden = YES;
    [msgBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [msgImageView setImage:[UIImage imageNamed:@"btn_tabmsg_gray_normal"]];

    self.myMainVC.view.hidden = YES;
    [myBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [myImageView setImage:[UIImage imageNamed:@"btn_tabme_gray_normal"]];
}
-(YDMainVC *)mainVC
{
    if (!mainVC) {
        mainVC = [[UIStoryboard  storyboardWithName:@"Home" bundle:nil] instantiateViewControllerWithIdentifier:@"YDMainVC"];
        mainVC.navigationController = self.navigationController;
    }
    return mainVC;
}
-(YDFindMainVC *)findMainVC
{
    if (!findMainVC) {
        findMainVC = [[UIStoryboard  storyboardWithName:@"Find" bundle:nil] instantiateViewControllerWithIdentifier:@"YDFindMainVC"];
        findMainVC.navigationController = self.navigationController;
    }
    return findMainVC;
}
-(YDInfoMainVC *)infoMainVC
{
    if (!infoMainVC) {
        infoMainVC = [[UIStoryboard  storyboardWithName:@"Info" bundle:nil] instantiateViewControllerWithIdentifier:@"YDInfoMainVC"];
        infoMainVC.navigationController = self.navigationController;
    }
    return infoMainVC;
}
-(YDMsgMainVC *)msgMainVC
{
    if (!msgMainVC) {
        msgMainVC = [[UIStoryboard  storyboardWithName:@"Message" bundle:nil] instantiateViewControllerWithIdentifier:@"YDMsgMainVC"];
        msgMainVC.navigationController = self.navigationController;
    }
    return msgMainVC;
}
-(YDMyMainVC *)myMainVC
{
    if (!myMainVC) {
        myMainVC = [[UIStoryboard  storyboardWithName:@"My" bundle:nil] instantiateViewControllerWithIdentifier:@"YDMyMainVC"];
        myMainVC.navigationController = self.navigationController;
    }
    return myMainVC;
}
-(void)setSelectedIndex:(NSInteger)index
{
    [self showViewWithIndex:index];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
