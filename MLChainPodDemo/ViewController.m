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
@property (nonatomic, assign) NSInteger a;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//[NSObject mlc_chainCreateChainFileToPodsWithClassNames:@[@"UITableView"]];
    
    UIView *view = UIView.mlc_make.frame_(100, 100, 100, 100).backgroundColor([UIColor cyanColor]).chainObject;
    [self.view addSubview:view];
  

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self addInGolbal];
        [self addInMain];
        
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [self addInGolbal];
            [self addInMain];
            
        });
    });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self addInGolbal];
        [self addInMain];
        
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [self addInGolbal];
            [self addInMain];
        });
    });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self addInGolbal];
        [self addInMain];
        
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [self addInGolbal];
            [self addInMain];
        });
    });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self addInGolbal];
        [self addInMain];
        
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [self addInGolbal];
            [self addInMain];
        });
    });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self addInGolbal];
        [self addInMain];
        
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [self addInGolbal];
            [self addInMain];
        });
    });

    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"%ld", self.a);
    });
    
}

- (void)addInGolbal {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        for (NSInteger i = 0; i < 1000; i++) {
            self.a = self.a + 1;
        }
       // NSLog(@"%@-%ld", NSStringFromSelector(_cmd), self.a);
    });
    
}
- (void)addInMain {
    dispatch_async(dispatch_get_main_queue(), ^{
        for (NSInteger i = 0; i < 1000; i++) {
            self.a = self.a + 1;
        }
         //NSLog(@"%@-%ld", NSStringFromSelector(_cmd), self.a);
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
