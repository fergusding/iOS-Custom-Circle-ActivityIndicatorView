//
//  ViewController.m
//  FDActivityIndicatorViewDemo
//
//  Created by fergusding on 15/5/27.
//  Copyright (c) 2015年 fergusding. All rights reserved.
//

#import "ViewController.h"
#import "FDActivityIndicatorView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FDActivityIndicatorView *indicatorView1 = [[FDActivityIndicatorView alloc] initWithFrame:CGRectMake(20, 100, 50, 50)];
    indicatorView1.color = [UIColor orangeColor];
    [self.view addSubview:indicatorView1];
    
    FDActivityIndicatorView *indicatorView2 = [[FDActivityIndicatorView alloc] initWithFrame:CGRectMake(150, 100, 100, 100)];
    indicatorView2.color = [UIColor colorWithRed:0 green:0 blue:0 alpha:1.0];
    [self.view addSubview:indicatorView2];
    
    FDActivityIndicatorView *indicatorView3 = [[FDActivityIndicatorView alloc] initWithFrame:CGRectMake(50, 250, 200, 200)];
    indicatorView3.color = [UIColor redColor];
    [self.view addSubview:indicatorView3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
