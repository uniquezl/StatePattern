//
//  State.h
//  StatePatternDemo
//
//  Created by zhulin on 2018/10/9.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StateProtocol <NSObject>

- (void)changeColor;

@end

NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject<StateProtocol>

@end

NS_ASSUME_NONNULL_END
