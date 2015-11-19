//
//  CollectorViewController.m
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import "CollectorViewController.h"
#import "Collector.h"
#import "APIClient.h"
#import "ResponseObject.h"

@interface CollectorViewController ()
@property (nonatomic, strong) Collector *currentCollector;
@end

@implementation CollectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    __weak typeof(self) weakSelf = self;
    [APIClient fetchCollectorByID:@"8ac79a313fe6851a013fe6abc0d707d4"
                          success:^(ResponseObject *ro) {
                              weakSelf.currentCollector = ro.object;
                          } failure:^(NSString *errorInfo) {
                              
                          }];
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
