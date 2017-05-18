//
//  ViewController.m
//  MLChainPodDemo
//
//  Created by 妙龙赖 on 2017/5/18.
//  Copyright © 2017年 妙龙赖. All rights reserved.
//

#import "ViewController.h"
#import <MLChain/MLChain.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//[NSObject mlc_chainCreateChainFileToPodsWithClassNames:@[@"UITableView"]];
    
    UIView *view = UIView.mlc_make.frame_(100, 100, 100, 100).backgroundColor([UIColor cyanColor]).chainObject;
    [self.view addSubview:view];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
