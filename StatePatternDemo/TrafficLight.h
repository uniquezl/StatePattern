//
//  TrafficLight.h
//  StatePatternDemo
//
//  Created by zhulin on 2018/10/9.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"


NS_ASSUME_NONNULL_BEGIN

@interface TrafficLight : NSObject

- (void)setupState:(State *)state;
- (void)operation;

@end

NS_ASSUME_NONNULL_END
