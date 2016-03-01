//
//  SingleFile.m
//  ThreadDemo
//
//  Created by pollysoft on 16/3/1.
//  Copyright (c) 2016年 microi. All rights reserved.
//

#import "SingleFile.h"

@implementation SingleFile

static id _instance;
+(instancetype)shareInstance
{
    if (!_instance) {
        static dispatch_once_t OnceToken;
        dispatch_once(&OnceToken, ^{
            _instance = [[self alloc]init];
        });
    }
    return _instance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (!_instance) {
        static dispatch_once_t OnceToken;
        dispatch_once(&OnceToken, ^{
            _instance = [super allocWithZone:zone];
        });
    }
    return _instance;
}

-(id)copy
{
    return _instance;
    
}
@end
