//
//  ThreadByNSOperation.m
//  ThreadDemo
//
//  Created by pollysoft on 16/3/1.
//  Copyright (c) 2016年 microi. All rights reserved.
//

#import "ThreadByNSOperation.h"

@implementation ThreadByNSOperation
SingleM


-(void)useNSInvocationOperationStart
{
    NSInvocationOperation *invocation = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(download:) object:@"NSInvocationOperation调用start下载"];
    [invocation start];
}

-(void)useNSInvocationOperationInQueue
{
    NSInvocationOperation *invocation = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(download:) object:@"NSInvocationOperation放入自定义队列中下载"];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    [queue addOperation:invocation];
}

-(void)useNSInvocationOperationInMainQueue
{
    NSInvocationOperation *invocation = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(download:) object:@"NSInvocationOperation放入主队列中下载"];
    
    NSOperationQueue *queue = [NSOperationQueue mainQueue];
    [queue addOperation:invocation];
}

-(void)addOperation:(NSOperationQueue *)queue andNumber:(NSInteger *)number
{
    if (number<0) {
        return;
    }
    for (int i = 0; i<number; i) {
        
        NSInvocationOperation *invocation = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(download:) object:@"NSInvocationOperation放入自定义队列中下载"];
        
        [queue addOperation:invocation];
        
    }
}

-(void)download:(NSString *)imgIndexs
{
    NSLog(@"NSOperation多线程下载，详情：%@，当前线程%@",imgIndexs,[NSThread currentThread]);
}

@end
