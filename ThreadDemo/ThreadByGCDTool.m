//
//  ThreadByGCDTool.m
//  ThreadDemo
//
//  Created by pollysoft on 16/3/1.
//  Copyright (c) 2016年 microi. All rights reserved.
//

#import "ThreadByGCDTool.h"

@implementation ThreadByGCDTool
SingleM

-(void)useSync:(dispatch_queue_t )queue
{
    //同步
    dispatch_sync(queue, ^{
        [self download:@"全局队列下载-1"];
    });
    dispatch_sync(queue, ^{
        [self download:@"全局队列下载-2"];
    });
    dispatch_sync(queue, ^{
        [self download:@"全局队列下载-3"];
    });
}

-(void)useASync:(dispatch_queue_t )queue
{
    //异步
    dispatch_sync(queue, ^{
        [self download:@"全局队列下载-1"];
    });
    dispatch_sync(queue, ^{
        [self download:@"全局队列下载-2"];
    });
    dispatch_sync(queue, ^{
        [self download:@"全局队列下载-3"];
    });
}

-(void)download:(NSString *)imgIndexs
{
    NSLog(@"GCD多线程下载，第%@张图片，当前线程%@",imgIndexs,[NSThread currentThread]);
}

@end
