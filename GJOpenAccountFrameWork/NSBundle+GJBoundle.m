//
//  NSBundle+GJBoundle.m
//  GJOpenAccountFrameWork
//
//  Created by konglee on 2017/2/18.
//  Copyright © 2017年 yangli. All rights reserved.
//

#import "NSBundle+GJBoundle.h"

@implementation NSBundle (GJBoundle)

+ (NSBundle *)GJBoundle
{
    static NSBundle *_GJBoundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"GJBoundle" ofType:@"bundle"];
        _GJBoundle = [NSBundle bundleWithPath:path];
    });
    return _GJBoundle;
}

@end
