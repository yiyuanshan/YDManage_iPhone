//
//  YDMainVC.m
//  YDManage_iPhone
//
//  Created by shanyiyuan on 16/1/15.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDMainVC.h"
#import "AFNetworking.h"

@interface YDMainVC ()

@end

@implementation YDMainVC

@synthesize navigationController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}
-(IBAction)didPressedRequest:(id)sender
{
    NSString *getdrugclassify = @"http://testapi.lkhealth.net/index.php?r=drug/getdrugclassify&php=test&city=%E5%B8%B8%E5%B7%9E&lat=31.771395&lng=119.981852&version=5.1.8&os=ios&auth=1&sign=753d222f97c63e55a0e7e0fe844f6304";

    [self getStringWithUrl:getdrugclassify name:@"getdrugclassify"];
    
    NSString *newStoreList = @"http://testapi.lkhealth.net/index.php?r=store/newStoreList&start=0&rows=20&lat=31.771395&lng=119.981852&distance=0&city=%E5%B8%B8%E5%B7%9E&isEmployee=0&isGrade=0&coupon=0&sortType=1&tag1=0&tag2=0&tag3=0&tag4=0&tag5=0&tag6=0&version=5.1.8&os=ios&auth=1&sign=1f1d0ed1712111eed2c76094951bed68";
    [self getStringWithUrl:newStoreList name:@"newStoreList"];
    
    NSString *employeeListSections = @"http://testapi.lkhealth.net/index.php?r=employee/employeeListSections&province=&city=&sections=&type=1&start=0&rows=20&lat=31.771395&lng=119.981852&version=5.1.8&os=ios&auth=1&sign=4b7e19f86ba1e2e7519eef506387ff23";
    [self getStringWithUrl:employeeListSections name:@"employeeListSections"];
}
-(void)getStringWithUrl:(NSString *)url name:(NSString *)name
{
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    AFHTTPRequestSerializer *requestSerializer = [AFHTTPRequestSerializer serializer];
    sessionManager.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:name,@"Name", nil];
    requestSerializer.timeoutInterval = 440;
    sessionManager.requestSerializer = requestSerializer;
    [sessionManager GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject,NSDictionary *userInfo) {
        NSError *error;
        
        NSMutableDictionary *jsonObj = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:&error];
        NSLog(@"Name===>%@\n======%@", [userInfo objectForKey:@"Name"],jsonObj);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error,NSDictionary *userInfo) {
        

    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
