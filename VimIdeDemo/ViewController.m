//
//  ViewController.m
//  VimIdeDemo
//
//  Created by ws2356 on 2019/7/6.
//  Copyright © 2019 ws2356. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *sth = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:sth];
    sth.backgroundColor = [UIColor redColor];
}


@end
