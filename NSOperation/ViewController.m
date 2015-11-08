//
//  ViewController.m
//  NSOperation
//
//  Created by 黄海燕 on 15/11/7.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 创建队列
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    // 创建3个操作
    NSOperation *a = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"operation a---");
    }];
    NSOperation *b = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"operation b---");
    }];
    NSOperation *c = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"operation c---");
    }];
    // 添加依赖
    [c addDependency:a];
    [c addDependency:b];
    
    // 执行操作
    [queue addOperation:a];
    [queue addOperation:b];
    [queue addOperation:c];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
