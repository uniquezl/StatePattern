//
//  ViewController.m
//  StatePatternDemo
//
//  Created by zhulin on 2018/10/9.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "ViewController.h"
#import "TrafficLight.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TrafficLight *light = [[TrafficLight alloc] init];
    [light operation];
    [light operation];
    [light operation];
}


@end
