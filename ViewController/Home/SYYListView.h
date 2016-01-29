//
//  SYYListView.h
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/28.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SYYListViewDelegate,SYYListViewDataSource;
@interface SYYListView : UIView

@property (weak, nonatomic) id <SYYListViewDataSource> dataSource;
@property (weak, nonatomic) id <SYYListViewDelegate> delegate;

-(void)reloadData;

@end

#pragma mark --
#pragma mark -- SYYListViewDelegate
@protocol SYYListViewDelegate <NSObject>
@optional
-(void)listView:(SYYListView *)listView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

@end

#pragma mark --
#pragma mark -- SYYListViewDataSource
@protocol SYYListViewDataSource <NSObject>
@required
-(NSInteger)listView:(SYYListView *)listView numberOfItemsInSection:(NSInteger)section;

-(UIView *)listView:(SYYListView *)listView itemForRowAtIndexPath:(NSIndexPath *)indexPath;

-(CGFloat )listView:(SYYListView *)listView heightForItemAtIndexPath:(NSIndexPath *)indexPath;
-(CGFloat )listView:(SYYListView *)listView widthForItemAtIndexPath:(NSIndexPath *)indexPath;

@optional
-(NSInteger)numberOfSectionsInListView :(SYYListView *)listView;
@end