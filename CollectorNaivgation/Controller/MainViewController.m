//
//  MainViewController.m
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import "MainViewController.h"
#import "CollectorViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showNavigationPage:(id)sender
{
    CollectorViewController *cvc = [[CollectorViewController alloc] initWithNibName:@"CollectorViewController" bundle:[NSBundle mainBundle]];
    [self showViewController:cvc sender:nil];
}

@end
