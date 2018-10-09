//
//  TrafficLight.m
//  StatePatternDemo
//
//  Created by zhulin on 2018/10/9.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "TrafficLight.h"
#import "RedState.h"
#import "YellowState.h"
#import "GreenState.h"

@interface TrafficLight()

@property (nonatomic)State *redState;
@property (nonatomic)State *yellowState;
@property (nonatomic)State *greenState;
@property (nonatomic)State *currentState;

@end

@implementation TrafficLight

- (instancetype)init {
    self = [super init];
    if (self) {
        self.redState = [[RedState alloc] init];
        self.yellowState = [[YellowState alloc] init];
        self.greenState = [[GreenState alloc] init];
        self.currentState = [[RedState alloc] init];
    }
    return self;
}

- (void)operation {
    if ([self.currentState isKindOfClass:[RedState class]]) {
        self.currentState = self.yellowState;
        [self.yellowState changeColor];
    } else if ([self.currentState isKindOfClass:[YellowState class]]) {
        self.currentState = self.greenState;
        [self.greenState changeColor];
    } else {
        self.currentState = self.redState;
        [self.redState changeColor];
    }
}

- (void)setupState:(State *)state {
    if (!state) {
        self.currentState = [[RedState alloc] init];
    } else {
        self.currentState = state;
    }
}

@end
