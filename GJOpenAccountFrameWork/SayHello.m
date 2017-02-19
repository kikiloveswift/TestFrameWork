//
//  SayHello.m
//  GJOpenAccountFrameWork
//
//  Created by konglee on 2017/2/18.
//  Copyright © 2017年 yangli. All rights reserved.
//

#import "SayHello.h"
#import "SecondViewController.h"

@implementation SayHello

+ (void)pushAccountWith:(UINavigationController *)nav
{
    NSLog(@"%@",[NSBundle GJBoundle]);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"GJBoundle" ofType:@"bundle"];
    NSBundle *GJBoundle = [NSBundle bundleWithPath:path];
    
    SecondViewController *testVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle GJBoundle]];
  
    [nav pushViewController:testVC animated:YES];
    
}
@end
