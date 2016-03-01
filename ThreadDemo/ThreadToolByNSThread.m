//
//  ThreadToolByNSThread.m
//  ThreadDemo
//
//  Created by pollysoft on 16/3/1.
//  Copyright (c) 2016年 microi. All rights reserved.
//

#import "ThreadToolByNSThread.h"

@implementation ThreadToolByNSThread
SingleM

-(void)useNSThread:(NSString *)threadName
{
    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(download:) object:@"NSThread下载"];
    thread.name = threadName;
    [thread start];
    if ([NSThread isMainThread]) {
        NSLog(@"当前为主线程");
    }else{
        NSLog(@"当前非主线程");
    }
}

-(void)userdetachNewThread
{
    [NSThread detachNewThreadSelector:@selector(download:) toTarget:self withObject:@"NSThread自启动线程" ];
}

-(void)useNSThreadInBackgrund
{
    [self performSelectorInBackground:@selector(download:) withObject:@"NSThread隐式启动"];
}

-(void)download:(NSString *)imgIndexs
{
    NSLog(@"NSThread多线程下载，第%@张图片，当前线程%@",imgIndexs,[NSThread currentThread]);
    [NSThread sleepForTimeInterval:5];
    NSLog(@"睡眠结束");
    [NSThread exit];
}

@end
