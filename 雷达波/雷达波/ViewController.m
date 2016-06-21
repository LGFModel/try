//
//  ViewController.m
//  雷达波
//
//  Created by 李国峰 on 16/6/21.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "ViewController.h"
#import "GFWaterView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(clickAnimation) userInfo:nil repeats:YES];
}
-(void)clickAnimation{
    __block GFWaterView *waterView = [[GFWaterView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    waterView.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:waterView];
    //    self.waterView = waterView;
    
    
    [UIView animateWithDuration:2 animations:^{
        
        waterView.transform = CGAffineTransformScale(waterView.transform, 2, 2);
        
        waterView.alpha = 0;
        
    } completion:^(BOOL finished) {
        
        [waterView removeFromSuperview];
        NSLog(@"%ld",self.view.subviews.count);
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
