//
//  ViewController.m
//  textField
//
//  Created by 诸超杰 on 16/4/27.
//  Copyright © 2016年 class17. All rights reserved.
//

#import "ViewController.h"
#import "CommnetButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CommnetButton *btn = [[CommnetButton alloc] initWithSth];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(aaa:) forControlEvents:(UIControlEventTouchUpInside)];
    
}

- (void)aaa:(CommnetButton *)button {
    NSLog(@"dd");
    button.block();
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
