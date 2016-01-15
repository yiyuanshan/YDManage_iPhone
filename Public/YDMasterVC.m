//
//  YDMasterVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/14.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDMasterVC.h"

#define RGB(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@interface YDMasterVC ()
{
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

@end

@implementation YDMasterVC

@synthesize selectedIndex;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showViewWithIndex:self.selectedIndex];
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
            [homeBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [homeImageView setImage:[UIImage imageNamed:@"btn_tabstore_blue_selected"]];
        }
            break;
        case 2:{
            [findBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [findImageView setImage:[UIImage imageNamed:@"btn_tabdrug_blue_selected"]];
        }
            break;
        case 3:{
            [infoBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [infoImageView setImage:[UIImage imageNamed:@"btn_tabinfo_blue_selected"]];
        }
            break;
        case 4:{
            [msgBtn setTitleColor:RGB(44,173,240,1) forState:UIControlStateNormal];
            [msgImageView setImage:[UIImage imageNamed:@"btn_tabmsg_blue_selected"]];
        }
            break;
        case 5:{
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
    [homeBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [homeImageView setImage:[UIImage imageNamed:@"btn_tabstore_gray_normal"]];
    
    [findBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [findImageView setImage:[UIImage imageNamed:@"btn_tabdrug_gray_normal"]];
    
    [infoBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [infoImageView setImage:[UIImage imageNamed:@"btn_tabinfo_gray_normal"]];
    
    [msgBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [msgImageView setImage:[UIImage imageNamed:@"btn_tabmsg_gray_normal"]];

    [myBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [myImageView setImage:[UIImage imageNamed:@"btn_tabme_gray_normal"]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
